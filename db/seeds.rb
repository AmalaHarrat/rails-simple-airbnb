# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
User.destroy_all
Flat.destroy_all

puts "Creating flats"
User.create!(name: "Amala")

puts "Creating flats"
Flat.create!(
  user: User.first,
  name: 'Light & Spacious Garden Flat London',
  adress: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75
)
Flat.create!(
  user: User.first,
  name: 'Pinky flat in Dubai',
  adress: '1 Sheikh Zayed Road Dubai',
  description: 'A nice and girly flat with a wonderful view on the palm and close to the beach, perfect for girl trip',
  price_per_night: 110
)
Flat.create!(
  user: User.first,
  name: 'Nice flat in Warsaw',
  adress: '1 Sheikh Zayed Road Dubai',
  description: 'A nice and girly flat with a wonderful view on the palm and close to the beach, perfect for girl trip',
  price_per_night: 110
)
Flat.create!(
  user: User.first,
  name: 'Lovely flat in Toulon',
  adress: '1 Sheikh Zayed Road Dubai',
  description: 'A nice and girly flat with a wonderful view on the palm and close to the beach, perfect for girl trip',
  price_per_night: 110
)
