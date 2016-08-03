# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  User.create!(email: Faker::Internet.email, password: "password")
end

  Cheese.create(name: "Roquefort")
  Cheese.create(name: "Camembert")
  Cheese.create(name: "Chèvre")
  Cheese.create(name: "Feta")
  Cheese.create(name: "Mozzarella")
  Cheese.create(name: "Cheddar")
  Cheese.create(name: "Gouda")
  Cheese.create(name: "Taleggio")
  Cheese.create(name: "Parmigiano-Reggiano")
  Cheese.create(name: "Monterey Jack")
