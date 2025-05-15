# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "cleaning database"
Car.destroy_all
Owner.destroy_all

puts "creating owner"
Owner.create(nickname: "Tommy")
Owner.create(nickname: "Jens")
Owner.create(nickname: "Michael")

puts "creating cars"
Car.create(brand: "fiat", model: "500", year: 2017, fuel: "petrol", owner_id: 1)
Car.create(brand: "toyota", model: "Aygo", year: 2016, fuel: "petrol", owner_id: 2)
Car.create(brand: "mercedes", model: "Gla", year: 2018, fuel: "petrol", owner_id: 3)

puts "finished seeding"
