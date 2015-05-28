# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([
	{first_name: "Jefferson", last_name: "Choi", date_of_birth: "12/09/1991", email: "jeffersonchoi@text.com"}, 
	{first_name: "Jonathan", last_name: "Choi", date_of_birth: "18/16/1983", email: "jonathan@text.com"}
	])

items = Item.create([
	{user_id: 1, name: "apple", stock_quantity: 10, marked_price: 3.5},
	{user_id: 2, name: "orange", stock_quantity: 20, marked_price: 2.5}
	])