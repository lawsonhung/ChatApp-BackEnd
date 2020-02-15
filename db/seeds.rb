# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.create(name:"Lawson" , online_status:true)
user2 = User.create(name:"Hamza" , online_status:true)


chat1 = Chat.create(name:"lawson/hamza" )

ChatBox.create(user_id: user1.id , chat_id: chat1.id , message: "ahhahahahahhhahaa" )
ChatBox.create(user_id: user2.id , chat_id: chat1.id , message: "ahhahahahahhhahaa" )
ChatBox.create(user_id: user1.id , chat_id: chat2.id , message: "ahhahahahahhhahaa" )
ChatBox.create(user_id: user2.id , chat_id: chat2.id , message: "ahhahahahahhhahaa" )
