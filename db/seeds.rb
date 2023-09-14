# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating flats...'
garden_flat = {
  name: 'Light & Spacious Garden Flat London, United Kingdom',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
}
waterloo_collection = {
  name: 'The Waterloo Collection',
  address: '2 Colnbrook S, Southwark, London, United Kingdom',
  description: 'The Waterloo Collection is located in the center of London, close to Big Ben, Waterloo Station and Houses of Parliament.',
  price_per_night: 249,
  number_of_guests: 4
}
clerkenwell_flats = {
  name: 'The Clerkenwell Flats',
  address: '6 Cloth Fair, Barbican, City of London, London, EC1A 7JQ, United Kingdom',
  description: "The Clerkenwell Flats provides accommodations in a prime location in the center of London, within a short distance of St Paul's Cathedral, Liverpool Street Tube Station and Sky Garden.",
  price_per_night: 148,
  number_of_guests: 2
}
crane_court = {
  name: 'Crane Court',
  address: '1 Crane Court, City of London, London, EC4A 2EJ, United Kingdom',
  description: "Popular points of interest near the condo hotel include St Paul's Cathedral, Somerset House and Savoy Theatre. The nearest airport is London City Airport, 7.5 miles from Crane Court",
  price_per_night: 205,
  number_of_guests: 3
}
rest_boutique_notting_hill = {
  name: 'Rest Boutique Notting Hill',
  address: '6 Lancaster Court 103 Lancaster Road, Kensington and Chelsea, London',
  description: "The units provide views of the city and come with a washing machine, a fully equipped kitchen with an oven, and a bathroom with a hair dryer and free toiletries. A microwave and coffee machine are also provided.",
  price_per_night: 189,
  number_of_guests: 2
}

[garden_flat, waterloo_collection, clerkenwell_flats, crane_court, rest_boutique_notting_hill].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"

end
puts 'Finished!'
