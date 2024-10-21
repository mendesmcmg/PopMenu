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
Restaurant.destroy_all
RestaurantMenu.destroy_all
MenuItem.destroy_all

# RESTAURANTS
restaurant1 = Restaurant.create!(name: "Italian Bistro")
restaurant2 = Restaurant.create!(name: "Vegan Paradise")
restaurant3 = Restaurant.create!(name: "Grill House")

# MENUS
menu1 = restaurant1.restaurant_menus.create!(
  name: "Italian Classics",
  description: "A selection of traditional Italian dishes.",
  active: true
)

menu2 = restaurant2.restaurant_menus.create!(
  name: "Vegan Delights",
  description: "A variety of delicious and healthy vegan options.",
  active: true
)

menu3 = restaurant3.restaurant_menus.create!(
  name: "Grill Specialties",
  description: "Grilled dishes for meat lovers.",
  active: true
)

# ITEMS
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

# ITEMS (MENU 2)
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

# ITEMS (MENU 3)
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
