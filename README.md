# Definitions
 - /topic/ is a room
 - /topic/ has one or no host
 - /topic/ has many guests
 - /category/topic/
 - /category/ -> category lounge
 - when /topic/ has no host, next guest will become the host
 - host can customize theme of the room
 - host can delete posts

# Features
 - dynamically create rooms
 - hyperlink url
 - youtube integration
 - post number (#100 should create link to post #100)
 - gist integration (pasting code)
 - command: _:rm=#_ (remove post #)
 - upload and display images
 - clickable post number (append #100 to your input)

# ToDo:
 - display popular rooms /lounge (100)/ on top
 - simple markup language integration
 - older message displays day/mo/year in addition to min/hour
 - customizable theme
 - drag and drop
 - upload and display sound clips
 - twitter-style display more log
 - allows lounges/topics
 - collapse author
 - cycle left and right alignments
 - master password
 - user deletes own post
 - public / invite only
 - elaborate greeting message: welcome to /lounge/topic/
 - accentuate topic
 - /topic/ generate link to /topic/
 - /category/topic/ generate link to /category/topic/
 - /room/#100 generates link to /room/ on post #100
 - +/-1
 - :filter=token,token,token
 - hyperlink should recognize https protocol
 - :sound=trumpet
 - :image=snowman
 - :wiki=keyword (option: random)
 - :google=keyword (option: random)
 - :youtube=v
 - wikipedia integration
 - google search results integration
 - user left message
 - validate youtube entry: http://code.google.com/apis/youtube/2.0/developers_guide_php.html#Retrieving_Video_Entry
 - global notification (for downtime and maintenance announcement)
 - manage db records
 - simple db actions (:rm=100)
 - export db as xml
 - integrate pastebin http://pastebin.com/t5BtQzqm => <script src="http://pastebin.com/embed_js.php?i=t5BtQzqm"></script>
 - refactor with record derivation: see manual
