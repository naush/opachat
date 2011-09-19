import stdlib.web.template

type command = {action: string
               ; arguments: list(string)}

type message = {author: string
               ; text: string
               ; time: Date.date
               ; kind: string
               ; room: string
               ; number: int}

db /history: stringmap(intmap(message))
db /history[_][_]/author = "Anonymous"
db /history[_][_]/text = "This chat room is very quiet."
db /history[_][_]/time = Date.now()
db /history[_][_]/kind = "chat"
db /history[_][_]/room = "lounge"
db /history[_][_]/number = 0

@publish room = Network.cloud("room"): Network.network(message)

save_message(message) =
  room_name = message.room
  fresh_key = Db.fresh_key(!/history[room_name])
  message = {author=message.author text=message.text time=message.time kind=message.kind room=room_name number=fresh_key}
  do /history[room_name][fresh_key] <- message
  message

welcome_message(author: string) =
  match author == Dom.get_value(#user) with
   | {true} -> "Welcome, you are user {author}"
   | {false} -> "User {author} has joined the room"

embed_youtube(token) =
  value = List.head(String.explode("&", token))
  "<iframe class=\"youtube-player\" kind=\"text/html\" width=\"640\" height=\"385\"
  src=\"http://www.youtube.com/embed/{value}?wmode=opaque\" frameborder=\"0\" allowfullscreen>
  </iframe>"

embed_gist(token) =
  "<script src=\"http://gist.github.com/{token}.js\"></script>"

remove_from_db(topic, number) =
  path = @/history[topic][Int.of_string(number)]
  if Db.exists(path)
    then Db.remove(path)
    else {}

remove_from_dom(number) =
  dom = Dom.select_id("post-{number}")
  if Dom.is_empty(dom)
    then {} 
    else Dom.remove(dom)

escape = parser p = ([a-zA-Z0-9\-_/.]+) -> Text.to_string(p)
numeric = parser n = ([0-9]+) -> Text.to_string(n)
alphanumeric = parser a = ([a-zA-Z0-9\-_]+) -> Text.to_string(a)
protocol = parser p = ("http://"|"https://") -> Text.to_string(p)
topic = parser t = ([a-zA-Z0-9-_.]+) -> Text.to_string(t)

transformer =
  parser
  | protocol "gist.github.com/" ~numeric -> embed_gist(numeric)
  | protocol "www.youtube.com/watch?v=" ~alphanumeric -> embed_youtube(alphanumeric)
  | protocol "youtube.com/watch?v=" ~alphanumeric -> embed_youtube(alphanumeric)
  | protocol "www.youtube.com/v/" ~alphanumeric -> embed_youtube(alphanumeric)
  | protocol "youtube.com/v/" ~alphanumeric -> embed_youtube(alphanumeric)
  | ~protocol ~escape -> "<a href=\"{protocol}{escape}\" target=\"_blank\">{protocol}{escape}</a>"
  | "#" ~numeric -> "<a href=\"#{numeric}\">#{numeric}</a>"

transform(token) =
  match Parser.try_parse(transformer, token) with
  | ~{some} -> some
  | {none} -> token

transform_text(text) =
  tokens = List.map(transform, String.explode(" ", text))
  Xhtml.of_string_unsafe(String.of_list(String.to_string, " ", tokens))

message_to_html(m: message) =
  <div class="post" id="post-{m.number}">
     {if m.kind == "chat" then <div class="number"><a name="{m.number}">{m.number}</a></div> else <div class="number" />}
     <div class="time">[{stamp(m.time)}]</div>
     <div class="user">{m.author}:</div>
     <div class="message">{transform_text(m.text)}</div>
  </div>

history_to_html(m: message) =
  <div class="post" id="post-{m.number}">
     <div class="old-number"><a name="{m.number}">{m.number}</a></div>
     <div class="old-time">[{stamp(m.time)}]</div>
     <div class="old-user">{m.author}:</div>
     <div class="old-message">{transform_text(m.text)}</div>
  </div>

stamp(date) = "{Date.to_formatted_string(Date.generate_printer("%H:%M"), date)}"

command_parser =
  parser
  | ":rm=/" ~topic "/" ~numeric -> {action = "rm" arguments = [topic, numeric]} 
  | (.*) -> {action = "none" arguments = []}

parse_command(token) = Parser.parse(command_parser, token)

execute_from_server(command) =
  match command.action with
  | "rm" -> remove_from_db(List.head(command.arguments), List.head(List.tail(command.arguments)))
  | "none" -> {}
  | _ -> {}

execute_from_client(command) =
  match command.action with
  | "rm" -> remove_from_dom(List.head(List.tail(command.arguments)))
  | "none" -> {}
  | _ -> {}

user_update(m: message) =
  if m.room == Dom.get_value(#room)
  then (
    text = match m.kind with
    | "welcome" -> welcome_message(m.author)
    | "chat" -> m.text
    | "command" -> (
      do execute_from_client(parse_command(m.text))
      "<div class=\"command\">Blasphemy!</div>"
    )
    | _ -> m.text
    post = message_to_html({author=m.author text=text time=m.time kind=m.kind room=m.room number=m.number})
    do Dom.transform([#conversation -<- post ])
    Dom.scroll_to_top(#conversation)
  )
  else {}

setup_conversation(author, room_name) =
  do Network.add_callback(user_update, room)
  Network.broadcast({~author text = "" time=Date.now() kind = "welcome" room=room_name number=999}, room)

broadcast(author, room_name) =
  entry = Dom.get_value(#entry)
  command = parse_command(entry)
  do execute_from_server(command)
  message = if command.action == "none"
    then save_message({~author text=entry time=Date.now() kind = "chat" room=room_name number=999})
    else {~author text=entry time=Date.now() kind = "command" room=room_name number=999}
  do Network.broadcast(message, room)
  Dom.clear_value(#entry)

body(author, messages, room_name) =
  Resource.styled_page("/{room_name}/", ["/resources/css.css"],
    <div id=#header>
      <div id=#logo></div>
      <input type="hidden" id=#room value={room_name} />
      <input type="hidden" id=#user value={author} />
    </div>
    <div id=#conversation onready={_ -> setup_conversation(author, room_name)}>
      {List.map(history_to_html, List.rev(messages))}
    </div>
    <div id=#top>
      <input id=#entry onnewline={_ -> broadcast(author, room_name)} />
      <input type="submit" onclick={_ -> broadcast(author, room_name)} value="Post" />
    </div>
  )

setup_room(name) =
  author = Random.string(8)
  messages = Map.To.val_list(/history[name])
  body(author, messages, name)

start =
   | {path = []    ...} -> setup_room("lounge")
   | {path = path  ...} -> setup_room(String.to_lower(List.head(path)))

server = Server.of_bundle([@static_include_directory("resources")])
server = Server.simple_dispatch(start)
