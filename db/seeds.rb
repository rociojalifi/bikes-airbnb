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

file = URI.open('https://pictures.ssg-service.com/spa/spark-rc-tarmac_1600x750_landing-main-banner_2021_BIKE_SCOTT-Sports_1814015_jpg_original_1.jpg')
bike = Bike.new( description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
location: "La calle violeta 123, Buenos Aires, Argentina",
price: 40.00)
bike.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
bike.save

file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
bike1 = Bike.create!(
  user: user10,
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
  location: "La calle violeta 123, Buenos Aires, Argentina",
  price: 100.00
)
bike1.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
bike1.save

file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
bike2 = Bike.create!(
  user: user1,
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
  location: "La calle violeta 123, Buenos Aires, Argentina",
  price: 90.00
)
bike2.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
bike2.save

file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
bike3 = Bike.create!(
  user: user5,
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
  location: "La calle violeta 123, Buenos Aires, Argentina",
  price: 40.00
)
bike3.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
bike3.save

file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
bike4 = Bike.create!(
  user: user6,
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
  location: "La calle violeta 123, Buenos Aires, Argentina",
  price: 4000.00
)
bike4.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
bike4.save


