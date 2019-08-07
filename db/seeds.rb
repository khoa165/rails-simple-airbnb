# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating flats...'
12.times do
  Flat.create(
    name: Faker::Company.name,
    address: Faker::Address.full_address,
    description: Faker::Lorem.paragraph(sentence_count: Random.rand(3..5), supplemental: true, random_sentences_to_add: 5),
    price_per_night: Random.rand(30..100),
    number_of_guests: Random.rand(1..5)
  )
end

puts 'Finished!'
