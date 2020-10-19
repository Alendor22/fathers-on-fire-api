require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

solo = Admin.create(name:'Solomon Peña',email:'solomonraulpena@gmail.com')

adeja = Admin.create(name:'Adeja Lendor',email:'alendor6@gmail.com')

20.times do
  Project.create(title:Faker::Company.name,summary:Faker::Lorem.paragraphs,objective:Faker::Lorem.paragraphs,location:"#{Faker::FunnyName.name} street, brooklyn, NY")   
end

100.times do
  User.create(name:Faker::FunnyName.name,email:"#{Faker::FunnyName.name}@#{Faker::FunnyName.name}.com")
end

# 225.times do
#   Donation.create(user_id:User.all.sample.id,project_id:Project.all.sample.id,amount:Faker::Commerce.price(range: 1..1000000.0, as_string: true))
# end

puts('seeded successfully!...')
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?