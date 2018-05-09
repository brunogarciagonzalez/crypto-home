# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user_one = User.create(username: "Satoshi_Nakamoto");
user_two = User.create(username: "Vitalik_Butterin");
user_three = User.create(username: "Jamie_Dimon");
user_four = User.create(username: "Doge");
user_five = User.create(username: "Phillip_J_Fry");

message_1 = Message.create(user_id: user_one.id, content: "This message is from Satoshi");
message_2 = Message.create(user_id: user_two.id, content: "This message is from Butterin");
message_3 = Message.create(user_id: user_three.id, content: "This message is from Dimon");
message_4 = Message.create(user_id: user_four.id, content: "This message is from Doge");
message_5 = Message.create(user_id: user_five.id, content: "This message is from Fry");
message_6 = Message.create(user_id: user_one.id, content: "BITCOIN");
message_7 = Message.create(user_id: user_two.id, content: "ETHEREUM");
message_8 = Message.create(user_id: user_three.id, content: "J.P. MORGAN");
message_9 = Message.create(user_id: user_four.id, content: "PIZZA");
message_10 = Message.create(user_id: user_five.id, content: "FUTURAMA");