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
Car.create(brand: "fiat", model: "500", year: 2017, fuel: "petrol", owner: Owner.find_by(nickname: "Tommy"), image_url:"https://th.bing.com/th/id/R.87821d43f99db116fc0fee75ec431a99?rik=b3SVZPdchlED6Q&riu=http%3a%2f%2fs1.cdn.autoevolution.com%2fimages%2fgallery%2fFIAT-500-2453_114.jpg&ehk=m2LMT2lmtw4k8F2GTThDKDAfC2pkfIP%2bCVH2S%2bhmRN0%3d&risl=&pid=ImgRaw&r=0")
Car.create(brand: "toyota", model: "Aygo", year: 2016, fuel: "petrol", owner: Owner.find_by(nickname: "Jens"), image_url:"https://media.1815.io/topgear/i/width=1952&height=1098/2021/03/toyota-aygo-x-prologue-2021-1.jpg")
Car.create(brand: "mercedes", model: "Gla", year: 2018, fuel: "petrol", owner: Owner.find_by(nickname: "Michael"), image_url:"https://th.bing.com/th/id/OIP._8SOWjlIlivITdxpwTQi4gHaEc?cb=iwp2&rs=1&pid=ImgDetMain")

puts "finished seeding"
