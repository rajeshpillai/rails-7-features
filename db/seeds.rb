# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "faker"

puts "Seeding dev data..."

# Task.destroy_all 

400000.times do |i| 

  Task.create(
    title: Faker::Quote.famous_last_words,
    completed: i%2 == 0 ? true : false
  )
end