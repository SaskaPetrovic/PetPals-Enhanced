# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'
Animal.destroy_all
User.destroy_all

user = User.create!(email: 'test@test.com', password: '123456')

10.times do
  Animal.create!(
    nom: Faker::Creature::Animal.name,
    especes: Faker::Creature::Animal.name,
    age: rand(1..15),
    localisation: Faker::Address.city,
    prix: rand(10..100),
    user: user
  )
  puts "Des animaux ont été crées"
end
