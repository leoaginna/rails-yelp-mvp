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

new_restaurants = [
  { name: "Dragón", address: "Calle Peking", phone_number: "123-456-7890", category: "chinese" },
  { name: "Trattoria", address: "Via Roma", phone_number: "987-654-3210", category: "italian" },
  { name: "Sushi", address: "Sushi Street", phone_number: "456-789-0123", category: "japanese" },
  { name: "Le Bistro", address: "Rue de la Paix", phone_number: "321-654-0987", category: "french" },
  { name: "Papas Fritas Delight", address: "Potato st", phone_number: "789-012-3456", category: "belgian" }
]
new_restaurants.each do |new_restaurant|
  restaurant = Restaurant.create!(new_restaurant)
  puts "Created #{restaurant.name}"
end

puts "Finished!"
