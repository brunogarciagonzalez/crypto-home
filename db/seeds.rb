# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

bitcoin = Currency.create(name: "Bitcoin", 
	api_historical: "https://api.coindesk.com/v1/bpi/historical/close.json",
	api_live: "https://api.coindesk.com/v1/bpi/currentprice.json");

user_one = User.create(username: "Satoshi Nakamoto");
user_two = User.create(username: "Vitalik Butterin");
user_three = User.create(username: "Jamie Dimon");
user_four = User.create(username: "I.C. Weiner");
user_five = User.create(username: "Phillip J. Fry");

satoshiBitcoin = UserCurrency.create(user_id: user_one.id, 
									 currency_id: bitcoin.id);

