/**
 * {1 Import standard classes of bootstrap css}
 *
 * see http://twitter.github.com/bootstrap/
 */
import stdlib.themes.bootstrap

/**
 * {1 Network infrastructure}
 */

/**
 * The type of messages sent by a client to the chatroom
 */
type message = {author: string /**The name of the author (arbitrary string)*/
               ; text: string  /**Content entered by the user*/}

/**
 * The chatroom.
 */
@publish room = Network.cloud("room"): Network.network(message)

/**
 * {1 User interface}
 */

/**
 * Update the user interface in reaction to reception of a message.
 *
 * This function is meant to be registered with [room] as a callback.
 * Its sole role is to display the new message in [#conversation].
 *
 * @param x The message received from the chatroom
 */
user_update(x: message) =
  line = <div class="row line">
            <div class="span1 columns userpic" />
            <div class="span2 columns user">{x.author}:</div>
            <div class="span13 columns message">{x.text}
            </div>
         </div>
  do Dom.transform([#conversation +<- line ])
  Dom.scroll_to_bottom(#conversation)

/**
 * Broadcast text to the [room].
 *
 * Read the contents of [#entry], clear these contents and send the message to [room].
 *
 * @param author The name of the author. Will be included in the message broadcasted.
 */
broadcast(author) =
  text = Dom.get_value(#entry)
  message = {~author ~text}
  do Network.broadcast(message, room)
  Dom.clear_value(#entry)

/**
 * Build the user interface for a client.
 *
 * Pick a random author name which will be used throughout the chat.
 *
 * @return The user interface, ready to be sent by the server to the client on connection.
 */
start() =
  author = Random.string(8)
  <div class="topbar"><div class="fill"><div class="container"><div id=#logo /></div></div></div>
  <div id=#conversation class="container" onready={_ -> Network.add_callback(user_update, room)}></div>
  <div id=#footer><div class="container">
    <input id=#entry class="xlarge" onnewline={_ -> broadcast(author)}/>
    <div class="btn primary" onclick={_ -> broadcast(author)}>Post</div>
  </div></div>

/**
 * {1 Application}
 */

/**
 * Main entry point.
 *
 * Construct an application called "Chat" (users will see the name in the title bar),
 * embedding statically the contents of directory "resources", using the global stylesheet
 * "resources/css.css" and the user interface defined in [start].
 */
server = Server.one_page_bundle("Chat",
       [@static_resource_directory("resources")],
       ["resources/example.css"], start)


// server = Server.one_page_bundle("Chat", [], [], start)
