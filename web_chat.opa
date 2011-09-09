import stdlib.web.template
import stdlib.components.weather

type message = {author: string
               ; text: string
               ; time: string
               ; welcome: bool}

// wwonline_api = "7a5e800a89201949110909"
// weather_widget(location) = CWeather.html(CWeather.default_config(wwonline_api), "widget", location)
// <div class="weather">{weather_widget("Chicago")}</div>

db /history: stringmap(list(message))
db /history[_]/hd/author = "Anonymous"
db /history[_]/hd/text = "This chat room is very quiet."
db /history[_]/hd/time = "[00:00]"
db /history[_]/hd/welcome = {false}

@publish room = Network.cloud("room"): Network.network(message)

save_message(message, room) =
  /history[room] <- List.add({author=message.author text=message.text time=stamp() welcome={false}}, /history[room])

welcome_message(author: string) =
  match author == Dom.get_value(#user) with
   | {true} -> "Welcome, you are user {author}"
   | {false} -> "User {author} has joined the room"

body(author, messages, room_name) = 
(
   Resource.styled_page("Chat", ["resources/css.css"],
     <div id=#header><div id=#logo></div><input id=#user value={author}></input></div>
     <div id=#conversation onready={_ -> setup_conversation(author)}>
        {List.map(history_to_html, messages)}
     </div>
     <div id=#top>
        <input id=#entry  onnewline={_ -> broadcast(author, room_name)}/>
        <div class="button" onclick={_ -> broadcast(author, room_name)}>Post</div>
     </div>
   )
)

// body(author, messages) = 
//    <div id=#header><div id=#logo></div><input id=#user value={author}></input></div>
//    // <div class="weather">{weather_widget("Chicago")}</div>
//    <div id=#conversation onready={_ -> setup_conversation(author)}>
//       {List.map(history_to_html, messages)}
//    </div>
//    <div id=#top>
//       <input id=#entry  onnewline={_ -> broadcast(author)}/>
//       <div class="button" onclick={_ -> broadcast(author)}>Post</div>
//    </div>

message_to_html(m: message) =
  <div class="line">
     <div class="time">[{m.time}]</div>
     <div class="user">{m.author}:</div>
     <div class="message">{m.text}</div>
  </div>

history_to_html(m: message) =
  <div class="line">
     <div class="old-time">[{m.time}]</div>
     <div class="old-user">{m.author}:</div>
     <div class="old-message">{m.text}</div>
  </div>

stamp() = "{Date.get_hour(Date.now())}:{Date.get_min(Date.now())}"

user_update(m: message) =
  text = if m.welcome then welcome_message(m.author) else m.text
  line = message_to_html({author=m.author text=text time=stamp() welcome=m.welcome})
  do Dom.transform([#conversation -<- line ])
  Dom.scroll_to_top(#conversation)

setup_conversation(author) =
  do Network.add_callback(user_update, room)
  Network.broadcast({~author text = "" time=stamp() welcome={true}}, room)

broadcast(author, room_name) =
   message = {~author text=Dom.get_value(#entry) time=stamp() welcome={false}}
   do save_message(message, room_name)
   do Network.broadcast(message, room)
   Dom.clear_value(#entry)

// start() =
//    author = Random.string(8)
//    messages = /history[0]
//    body(author, messages)
// 
// server = Server.one_page_bundle("Chat",
//        [@static_resource_directory("resources")],
//        ["resources/css.css"], start)

setup_room(name) =
   author = Random.string(8)
   messages = /history[name]
   body(author, messages, name)

start =
   | {path = []    ...} -> setup_room("lounge")
   | {path = path  ...} -> setup_room(String.to_lower(List.head(path)))

server = Server.of_bundle([@static_include_directory("resources")])
server = Server.simple_dispatch(start)
