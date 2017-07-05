# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

tim = User.create(email: "tim@apple.com", password: "abcd1234")


event = Event.create(name: "Lowlands", description: "bands drinks food and extra", location: "Biddinghuizen",
price: 189.0, capacity: 55000, includes_food: false, includes_drinks: false, starts_at: DateTime.new(2017, 8, 18), ends_at: DateTime.new(2017, 8, 21),
active: true, user: tim)
