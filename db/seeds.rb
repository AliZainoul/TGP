# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

City.destroy_all
User.destroy_all
Gossip.destroy_all
Tag.destroy_all
Link.destroy_all
Faker::Config.locale = 'fr'

10.times do
  number = Random.new
  number = number.rand(18..99)
  city = City.create(city_name: Faker::Address.city, zip_code: Faker::Address.zip_code)
  user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Movie.quote, email: Faker::Internet.email, age: number, city: city)
  tag = Tag.create(tag_title: Faker::Movies::HarryPotter.location)
end

20.times do
  gossip = Gossip.create(title: Faker::App.name , gossip_content: Faker::ChuckNorris.fact, user: User.all.sample)
  link = Link.create(tag: Tag.all.sample, gossip: Gossip.all.sample)
end

puts "10 users created"
puts "10 cities created"
puts "20 gossips created"
puts "10 tags created"
puts "All values has been created!"
