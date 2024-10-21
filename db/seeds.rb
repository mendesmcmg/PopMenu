# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

# Clear existing data
RestaurantMenu.destroy_all
MenuItem.destroy_all

# Create some restaurant menus
menu1 = RestaurantMenu.create!(
  name: "Italian Classics",
  description: "A selection of traditional Italian dishes.",
  active: true
)

menu2 = RestaurantMenu.create!(
  name: "Vegan Delights",
  description: "A variety of delicious and healthy vegan options.",
  active: true
)

menu3 = RestaurantMenu.create!(
  name: "Grill Specialties",
  description: "Grilled dishes for meat lovers.",
  active: true
)

# Create menu items for the first menu
MenuItem.create!([
  {
    restaurant_menu: menu1,
    name: "Spaghetti Carbonara",
    description: "Classic Roman pasta with eggs, cheese, pancetta, and pepper.",
    price: 12.99,
    category: "Pasta",
    available: true
  },
  {
    restaurant_menu: menu1,
    name: "Margherita Pizza",
    description: "Tomato, mozzarella, and fresh basil.",
    price: 9.99,
    category: "Pizza",
    available: true
  }
])

# Create menu items for the second menu
MenuItem.create!([
  {
    restaurant_menu: menu2,
    name: "Vegan Buddha Bowl",
    description: "A healthy bowl with quinoa, chickpeas, and mixed vegetables.",
    price: 10.50,
    category: "Salad",
    available: true
  },
  {
    restaurant_menu: menu2,
    name: "Tofu Stir-Fry",
    description: "Tofu with mixed vegetables in a savory sauce.",
    price: 11.00,
    category: "Main Course",
    available: true
  }
])

# Create menu items for the third menu
MenuItem.create!([
  {
    restaurant_menu: menu3,
    name: "BBQ Ribs",
    description: "Tender ribs smothered in BBQ sauce.",
    price: 15.99,
    category: "Grill",
    available: true
  },
  {
    restaurant_menu: menu3,
    name: "Grilled Salmon",
    description: "Fresh salmon grilled to perfection.",
    price: 18.50,
    category: "Grill",
    available: true
  }
])

puts "Seed data created!"
