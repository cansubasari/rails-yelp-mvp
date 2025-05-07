# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all
puts "Creating restaurants..."
Restaurant.create!(name: "Sushi Samba", address: "Heron Tower, 110 Bishopsgate, London EC2N 4AY", phone_number: "020 3640 7330", category: "japanese")
Restaurant.create!(name: "Le Petit Chef", address: "20 Fenchurch St, London EC3M 3BY", phone_number: "020 7265 0000", category: "french")
Restaurant.create!(name: "Maison Antoine", address: "Place Jourdan 1, Brussels", phone_number: "+32 2 230 54 90", category: "belgian")
Restaurant.create!(name: "BaoziInn", address: "24 Romilly St, London W1D 5AH", phone_number: "020 7287 0770", category: "chinese")
Restaurant.create!(name: "L'Artigiano", address: "3 Westow Hill, London SE19 1TQ", phone_number: "020 8670 6555", category: "italian")
Restaurant.create!(name: "Yumi Izakaya", address: "5-6 Little Portland St, London W1W 7JB", phone_number: "020 7636 0093", category: "japanese")
Restaurant.create!(name: "Chez Nous", address: "14 Rue Saint-Honoré, Paris", phone_number: "+33 1 42 68 53 00", category: "french")
Restaurant.create!(name: "Fritland", address: "49 Rue Henri Maus, 1000 Bruxelles", phone_number: "+32 2 512 03 31", category: "belgian")

puts "Finished! Created #{Restaurant.count} restaurants."
