import stdlib.web.template

type message = {author: string
               ; text: string
               ; time: Date.date
               ; welcome: bool
               ; room: string}

db /history: stringmap(list(message))
db /history[_]/hd/author = "Anonymous"
db /history[_]/hd/text = "This chat room is very quiet."
db /history[_]/hd/time = Date.now()
db /history[_]/hd/welcome = {false}
db /history[_]/hd/room = "lounge"

@publish room = Network.cloud("room"): Network.network(message)

save_message(message) =
  room_name = message.room
  /history[room_name] <- List.add({author=message.author text=message.text time=message.time welcome={false} room=room_name}, /history[room_name])

welcome_message(author: string) =
  match author == Dom.get_value(#user) with
   | {true} -> "Welcome, you are user {author}"
   | {false} -> "User {author} has joined the room"

replace_link(token) =
  if String.get_prefix(4, token) == some("http")
    then "<a href=\"{token}\" target=\"_blank\">{token}</a>"
    else token

transform_text(text) =
  tokens = List.map(replace_link, String.explode(" ", text))
  Xhtml.of_string_unsafe(String.of_list(String.to_string, " ", tokens))

message_to_html(m: message) =
  <div class="line">
     <div class="time">[{stamp(m.time)}]</div>
     <div class="user">{m.author}:</div>
     <div class="message">{transform_text(m.text)}</div>
  </div>

history_to_html(m: message) =
  <div class="line">
     <div class="old-time">[{stamp(m.time)}]</div>
     <div class="old-user">{m.author}:</div>
     <div class="old-message">{transform_text(m.text)}</div>
  </div>

stamp(date) = "{Date.get_hour(date)}:{Date.get_min(date)}"

user_update(m: message) =
  if m.room == Dom.get_value(#room)
  then (
    text = if m.welcome then welcome_message(m.author) else m.text
    line = message_to_html({author=m.author text=text time=m.time welcome=m.welcome room=m.room})
    do Dom.transform([#conversation -<- line ])
    Dom.scroll_to_top(#conversation)
  )
  else {}

setup_conversation(author, room_name) =
  do Network.add_callback(user_update, room)
  Network.broadcast({~author text = "" time=Date.now() welcome={true} room=room_name}, room)

broadcast(author, room_name) =
  entry = Dom.get_value(#entry)
  message = {~author text=entry time=Date.now() welcome={false} room=room_name}
  do save_message(message)
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
      {List.map(history_to_html, messages)}
    </div>
    <div id=#top>
      <input id=#entry onnewline={_ -> broadcast(author, room_name)} />
      <input type="submit" onclick={_ -> broadcast(author, room_name)} value="Post" />
    </div>
  )

setup_room(name) =
  author = Random.string(8)
  messages = /history[name]
  body(author, messages, name)

start =
   | {path = []    ...} -> setup_room("lounge")
   | {path = path  ...} -> setup_room(String.to_lower(List.head(path)))

server = Server.of_bundle([@static_include_directory("resources")])
server = Server.simple_dispatch(start)
