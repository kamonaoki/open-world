# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
10.times do |n|
  latitude = Faker::Address.latitude.to_f
  longitude = Faker::Address.longitude.to_f
  Post.create!(
    title: "Example Title #{n + 1}",
    description: "This is a description for post #{n + 1}",
    address: "Example Address #{n + 1}",
    latitude: latitude,
    longitude: longitude
  )
end