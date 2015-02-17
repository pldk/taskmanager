# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

20.times do
t = Task.create({name:Faker::Commerce.product_name, content:Faker::Lorem.sentence, done: false})

end

# t = Task.new({name:Faker::Commerce.product_name, content:Faker::Lorem.sentence, done: false})
# t.save

