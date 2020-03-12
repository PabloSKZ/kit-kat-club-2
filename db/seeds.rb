# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  Item.create(title: Faker::Artist.name, description: Faker::Hipster.sentences, price: rand(5..20), image_url: "https://www.latranchee.com/wp-content/uploads/2017/03/cute-cat.jpg")
end

User.create!(email: 'adminkitkat@yopmail.com', password: 'topsecret', password_confirmation: 'topsecret', admin: true)
