# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Deleting seeds'
Booking.delete_all
Bike.delete_all
User.delete_all

puts 'Creating new seeds'

user1 = User.create!(
  email: "vikingos@gmail.com",
  encrypted_password: "123456",
  password_confirmation: "123456"
)

user2 = User.create!(
  email: "euge@gmail.com",
  encrypted_password: "123456",
  password_confirmation: "123456"
)
user3 = User.create!(
  email: "petter@gmail.com",
  encrypted_password: "123456",
  password_confirmation: "123456"
)
user4 = User.create!(
  email: "gustavo@gmail.com",
  encrypted_password: "123456",
  password_confirmation: "123456"
)
user5 = User.create!(
  email: "harry_potter@gmail.com",
  encrypted_password: "123456",
  password_confirmation: "123456"
)
user6 = User.create!(
  email: "the_lord_of_the_rings@gmail.com",
  encrypted_password: "123456",
  password_confirmation: "123456"
)
user7 = User.create!(
  email: "tomacito@gmail.com",
  encrypted_password: "123456",
  password_confirmation: "123456"
)
user8 = User.create!(
  email: "lux@gmail.com",
  encrypted_password: "123456",
  password_confirmation: "123456"
)
user9 = User.create!(
  email: "glenn@gmail.com",
  encrypted_password: "123456",
  password_confirmation: "123456"
)
user10 = User.create!(
  email: "francisco@gmail.com",
  encrypted_password: "123456",
  password_confirmation: "123456"
)

bike1 = Bike.create!(
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
  location: "La calle violeta 123, Buenos Aires, Argentina",
  price: 100.00,
  photo: "bla"
)
bike2 = Bike.create!(
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
  location: "La calle violeta 123, Buenos Aires, Argentina",
  price: 90.00,
  photo: "bla"
)
bike3 = Bike.create!(
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
  location: "La calle violeta 123, Buenos Aires, Argentina",
  price: 40.00,
  photo: "bla"
)
bike4 = Bike.create!(
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
  location: "La calle violeta 123, Buenos Aires, Argentina",
  price: 4000.00,
  photo: "bla"
)
bike5 = Bike.create!(
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
  location: "La calle violeta 123, Buenos Aires, Argentina",
  price: 40.00,
  photo: "bla"
)