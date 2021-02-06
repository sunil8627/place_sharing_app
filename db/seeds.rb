# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(email: "user1@test.com", password: "123456", username: "User1")
user2 = User.create(email: "user2@test.com", password: "123456", username: "User2")
user3 = User.create(email: "user3@test.com", password: "123456", username: "User3")


Place.create(:sender_id => user1.id, :receiver_id => user2.id, :place => "New York", :is_public => true)
Place.create(:sender_id => user1.id, :receiver_id => user3.id, :place => "London", :is_public => true)
Place.create(:sender_id => user1.id, :receiver_id => user2.id, :place => "Delhi", :is_public => false)

Place.create(:sender_id => user2.id, :receiver_id => user1.id, :place => "Eiffel Tower", :is_public => true)
Place.create(:sender_id => user2.id, :receiver_id => user1.id, :place => "Mumbai", :is_public => false)
Place.create(:sender_id => user2.id, :receiver_id => user3.id, :place => "Cape Town", :is_public => true)

Place.create(:sender_id => user3.id, :receiver_id => user1.id, :place => "Egypt", :is_public => true)
Place.create(:sender_id => user3.id, :receiver_id => user1.id, :place => "Lahore", :is_public => false)
Place.create(:sender_id => user3.id, :receiver_id => user2.id, :place => "Mexico", :is_public => true)