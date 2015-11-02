# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(name:'Administrator', email:'admin@test.com',
             password:'12345678', password_confirmation:'12345678' )

5.times do
  Restaurant.create!(name: Faker::Address.street_name, description: Faker::Lorem.sentence)
end

20.times do
  Meal.create!(name: Faker::Commerce.product_name, restaurant: Faker::Number.between(1, 5),
               price: Faker::Commerce.price, description: Faker::Lorem.sentence)
end