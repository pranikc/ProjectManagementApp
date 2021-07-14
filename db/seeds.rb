# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Delete user projects!"
UserProject.destroy_all
puts "Delete users!"
User.destroy_all
puts "Delete projects!"
Project.destroy_all
puts "Delete project categories"
ProjectCategory.destroy_all



require 'faker'

50.times do
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, age: rand(13..100), likes: rand(1..1000), views: rand(1..1000))
end

50.times do
  Project.create(name: Faker::Music::RockBand.song, description: Faker::Music.album, likes: rand(1..1000), views: rand(1..1000))
end

10.times do
  ProjectCategory.create(category_type: Faker::Music.unique.genre)
end

50.times do
  UserProject.create(user_id: User.ids.sample, project_id: Project.ids.sample, project_category_id: ProjectCategory.ids.sample)
end

