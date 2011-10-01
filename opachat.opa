import stdlib.web.template
import stdlib.upload
import blasphemy.s3

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
  message = {message with number=fresh_key}
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
    else void

remove_from_dom(number) =
  dom = Dom.select_id("post-{number}")
  if Dom.is_empty(dom)
    then void 
    else Dom.remove(dom)

escape = parser p = ([a-zA-Z0-9\-_/.]+) -> Text.to_string(p)
numeric = parser n = ([0-9]+) -> Text.to_string(n)
alphanumeric = parser a = ([a-zA-Z0-9]+) -> Text.to_string(a)
path = parser p = ([a-zA-Z0-9\-=&_]+) -> Text.to_string(p)
protocol = parser p = ("http://"|"https://") -> Text.to_string(p)
topic = parser t = ([a-zA-Z0-9-_.]+) -> Text.to_string(t)
subdomain = parser s = ("www."|"") -> Text.to_string(s)

transformer =
  parser
  | protocol "gist.github.com/" ~numeric -> embed_gist(numeric)
  | protocol subdomain "youtube.com/watch?v=" ~path -> embed_youtube(path)
  | protocol subdomain "youtube.com/v/" ~path -> embed_youtube(path)
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
  | ":rm=" ~numeric -> {action = "rm" arguments = [numeric]}
  | (.*) -> {action = "none" arguments = []}

parse_command(token) = Parser.parse(command_parser, token)

execute_from_server(command, room) =
  match command.action with
  | "rm" -> remove_from_db(room, List.head(command.arguments))
  | "none" -> void
  | _ -> void

execute_from_client(command) =
  match command.action with
  | "rm" -> remove_from_dom(List.head(command.arguments))
  | "none" -> void
  | _ -> void

command_message(text:string) =
  do execute_from_client(parse_command(text))
  Xhtml.to_string(<div class="command">Blasphemy!</div>)

error_message(text:string) =
  Xhtml.to_string(<div class="error">{text}</div>)

message_executor(m: message) =
  text = match m.kind with
    | "welcome" -> welcome_message(m.author)
    | "chat" -> m.text
    | "command" -> command_message(m.text)
    | "error" -> error_message(m.text)
    | _ -> m.text
  html = message_to_html({m with ~text })
  do Dom.transform([#conversation -<- html ])
  void

user_update(m: message) =
  do if m.room == Dom.get_value(#room)
    then message_executor(m)
    else void
  Dom.scroll_to_top(#conversation)

setup_conversation(author, room_name) =
  do Network.add_callback(user_update, room)
  Network.broadcast({~author text = "" time=Date.now() kind = "welcome" room=room_name number=999}, room)

broadcast(author, room_name) =
  entry = Dom.get_value(#entry)
  if String.is_empty(entry)
  then void
  else (
    command = parse_command(entry)
    do execute_from_server(command, room_name)
    message = if command.action == "none"
      then save_message({~author text=entry time=Date.now() kind = "chat" room=room_name number=999})
      else {~author text=entry time=Date.now() kind = "command" room=room_name number=999}
    do Network.broadcast(message, room)
    Dom.clear_value(#entry)
  )

parse_field(field_name, data) =
  match Map.get(field_name, data) with
  | ~{some} -> some
  | {none} -> "_"

save_image(file:Upload.file, author:string, room_name:string) =
  if String.is_empty(file.filename)
  then void
  else (
    image_tag = "<img src='http://s3.amazonaws.com/blasphemy/images/{file.filename}'></img>"
    message = match file.mimetype with
    | "image/gif" -> save_message({~author text=image_tag time=Date.now() kind = "chat" room=room_name number=999})
    | "image/jpeg" -> save_message({~author text=image_tag time=Date.now() kind = "chat" room=room_name number=999})
    | "image/png" -> save_message({~author text=image_tag time=Date.now() kind = "chat" room=room_name number=999})
    | _ -> save_message({~author text = "GIF/JPG/PNG only." time=Date.now() kind = "error" room=room_name number=999})
    do if message.kind == "chat" then S3.upload(file) else void
    do Network.broadcast(message, room)
    void
  )

form_data(data) =
  files = data.uploaded_files
  fields = data.form_fields
  author = parse_field("author", fields)
  room_name = parse_field("room", fields)
  do broadcast(author, room_name)
  do Dom.set_html_unsafe(#input, Xhtml.to_string(input_form(author, room_name)))
  do Dom.give_focus(#entry)
  do match Map.get("upload", files) with
    | ~{some} -> save_image(some, author, room_name)
    | {none} -> void 
  void

params = {expiration={none} consumption={unlimited} visibility={current_context}}

input_form(author, room_name) =
  Upload.html(
    {
      form_id = "upload"
      url_parameters = params
      form_body =
        <input id=#entry name="entry" />
        <input type="submit" value="Post" />
        <input type="hidden" name="author" value="{author}" />
        <input type="hidden" name="room" value="{room_name}" />
        <input type="file" id=#upload name="upload" />
      process = form_data
    }
  )

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
    <div id=#input>
      {input_form(author, room_name)}
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
