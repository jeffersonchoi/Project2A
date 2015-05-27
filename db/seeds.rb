# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([user_id: 1, first_name: "Jefferson", last_name: "Choi", date_of_birth: "09/12/1991"])
users = User.create([user_id: 2, first_name: "Jonathan", last_name: "Choi", date_of_birth: "06/18/1983"])