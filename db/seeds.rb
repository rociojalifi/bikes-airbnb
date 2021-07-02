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

file1 = URI.open('https://images.unsplash.com/photo-1487803836022-91054ca05fdd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=667&q=80')
bike1 = Bike.create!(
  user: user10,
  description: "Cervelo S5",
  location: "Bijlmerdreef 989, Amsterdam",
  price: 25.00
)
bike1.photo.attach(io: file1, filename: 'nes1.jpg', content_type: 'image/jpg')
bike1.save

file2 = URI.open('https://images.unsplash.com/photo-1552229812-3fd9df36c4b1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=752&q=80')
bike2 = Bike.create!(
  user: user1,
  description: "Mega Mustang R29",
  location: "Märkischer Kreis, Alemania",
  price: 20.00
)
bike2.photo.attach(io: file2, filename: 'nes2.png', content_type: 'image/png')
bike2.save

file3 = URI.open('https://images.unsplash.com/photo-1569943228307-a66beab7cd96?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDd8fGJpa2V8ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60')
bike3 = Bike.create!(
  user: user5,
  description: "Schwinn Vintage",
  location: "Place de l'Atomium 1, Bélgica",
  price: 12.00
)
bike3.photo.attach(io: file3, filename: 'nes3.png', content_type: 'image/png')
bike3.save

file4 = URI.open('https://images.unsplash.com/photo-1501147830916-ce44a6359892?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80')
bike4 = Bike.create!(
  user: user6,
  description: "JVK Bikes Vintage",
  location: "Museumstraat 1, Amsterdam",
  price: 15.00
)
bike4.photo.attach(io: file4, filename: 'nes4.png', content_type: 'image/png')
bike4.save

file5 = URI.open('https://images.unsplash.com/photo-1485965120184-e220f721d03e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmlrZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60')
bike5 = Bike.create!(
  user: user5,
  description: "Peugeot Urban Cx",
  location: "Dam 1, Amsterdam",
  price: 10.00
)
bike5.photo.attach(io: file5, filename: 'nes5.png', content_type: 'image/png')
bike5.save

file6 = URI.open('https://images.unsplash.com/photo-1593764592116-bfb2a97c642a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=661&q=80')
bike6 = Bike.create!(
  user: user8,
  description: "Cannondale V360",
  location: "43 Choumert Rd, London",
  price: 30.00
)
bike6.photo.attach(io: file6, filename: 'nes6.png', content_type: 'image/png')
bike6.save

