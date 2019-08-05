# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


City.destroy_all
10.times do
  City.create(
    name: Faker::Address.city,
    zip_code: Faker::Address.zip
  )
end


User.destroy_all
10.times do 
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Quote.most_interesting_man_in_the_world,
    email: Faker::Internet.email,
    city: City.order('RANDOM()').first,
    age: rand(16..60)
  )
end

Gossip.destroy_all
20.times do 
  Gossip.create(
    user: User.all.sample,
    title: Faker::Quote.robin,
    content: Faker::Quote.famous_last_words
  )
end


Tag.destroy_all
10.times do 
  Tag.create(
    title: Faker::Quote.singular_siegler
  )
end

GossipTag.destroy_all
20.times do
  GossipTag.create(
    gossip: Gossip.all.sample,
    tag: Tag.all.sample
  )
end