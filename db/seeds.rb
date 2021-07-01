# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'
puts 'Deleting seeds'
Booking.delete_all
Bike.delete_all
User.delete_all

puts 'Creating new seeds'

user1 = User.create!(
  email: "vikingos@gmail.com",
  password: "123456",
)

user2 = User.create!(
  email: "euge@gmail.com",
  password: "123456",
)
user3 = User.create!(
  email: "petter@gmail.com",
  password: "123456",
)
user4 = User.create!(
  email: "gustavo@gmail.com",
  password: "123456",
)
user5 = User.create!(
  email: "harry_potter@gmail.com",
  password: "123456",
  
)
user6 = User.create!(
  email: "the_lord_of_the_rings@gmail.com",
  password: "123456",
  
)
user7 = User.create!(
  email: "tomacito@gmail.com",
  password: "123456",
  
)
user8 = User.create!(
  email: "lux@gmail.com",
  password: "123456",
  
)
user9 = User.create!(
  email: "glenn@gmail.com",
  password: "123456",
)
user10 = User.create!(
  email: "francisco@gmail.com",
  password: "123456",
)

file = URI.open('https://images.giant-bicycles.com/b_white,c_crop,h_600,q_70,w_1920/ttrxfweevgr629cgmyum/EBike_Banner.jpg')
bike = Bike.new( description: "Mountain Bike",
location: "Bedrijvenpark Apeldoorn-Noord, Apeldoorn",
price: 40.00)
bike.photo.attach(io: file, filename: 'bike_1.jpg', content_type: 'image/jpg')
bike.save

file2 = URI.open('https://images.unsplash.com/photo-1563990308267-cd6d3cc09318?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')
bike1 = Bike.create!(
  user: user10,
  description: "Purple City Bike",
  location: "Bijlmerdreef 989, Amsterdam",
  price: 100.00
)
bike1.photo.attach(io: file2, filename: 'bike_2.jpg', content_type: 'image/jpg')
bike1.save

file3 = URI.open('https://images.unsplash.com/photo-1456990493443-0d0ee2a630cc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')
bike2 = Bike.create!(
  user: user1,
  description: "Speed Bike",
  location: "Märkischer Kreis, Alemania",
  price: 90.00
)
bike2.photo.attach(io: file3, filename: 'nes.png', content_type: 'image/png')
bike2.save

file4 = URI.open('https://images.unsplash.com/photo-1586478029136-dc24a4bda75b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=80')
bike3 = Bike.create!(
  user: user5,
  description: "City Bike",
  location: "LScherpenheuvel-Zichem, Bélgica",
  price: 40.00
)
bike3.photo.attach(io: file4, filename: 'nes.png', content_type: 'image/png')
bike3.save

file5 = URI.open('https://images.unsplash.com/photo-1614003352040-76e0d0409fb6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1104&q=80')
bike4 = Bike.create!(
  user: user6,
  description: "Sporty Blue Bike",
  location: "Bedrijvenpark Apeldoorn-Noord, Apeldoorn",
  price: 4000.00
)
bike4.photo.attach(io: file5, filename: 'nes.png', content_type: 'image/png')
bike4.save

file6 = URI.open('https://images.unsplash.com/photo-1543169964-aee4453d2140?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')
bike5 = Bike.create!(
  user: user5,
  description: "Sporty Blue Bike",
  location: "Dümmlinghausen, 51647 Gummersbach, Alemania",
  price: 4000.00
)
bike5.photo.attach(io: file6, filename: 'nes.png', content_type: 'image/png')
bike5.save

file5 = URI.open('https://images.unsplash.com/photo-1593764592116-bfb2a97c642a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=661&q=80')
bike6 = Bike.create!(
  user: user8,
  description: "Speed Bike",
  location: "Nachtegaalstraat, 6361 VS Nuth",
  price: 4000.00
)
bike6.photo.attach(io: file5, filename: 'nes.png', content_type: 'image/png')
bike6.save

