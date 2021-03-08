puts "Resetting it all"
Chatroom.destroy_all
User.destroy_all
Message.destroy_all

puts "     _.-^^---....,,--_          _ _"
puts " _--    <(        ((> )--_       |"
puts "<     (      ( >         >)      |"
puts "(       )  BOOM!    ))   |)      |"
puts " \\._ (< \\     |   /    _./       |"
puts "    ```--. . , ; .--'''        100Km"
puts "          | |   |                |"
puts "       .-=||  | |=-.             |"
puts "       `-=#$%&%$#=-'             |"
puts "          | ;  :|                |"
puts " _____.,-#%&$@%#&#~,._____      - -"

puts "Create Chatrooms"
Chatroom.create! name: "general"

puts "Create Users"
User.create! email: "player@one.com", nickname: "Player One", password: '123456'
User.create! email: "player@two.com", nickname: "Player Two", password: '123456'

puts "Create message"
Message.create! user: User.first, chatroom: Chatroom.first, content: "Hello World!"