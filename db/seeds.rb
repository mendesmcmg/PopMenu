# Clear existing data
MenuItem.destroy_all
RestaurantMenu.destroy_all
Restaurant.destroy_all

# Create some restaurants
restaurant1 = Restaurant.create!(name: "Italian Bistro", description: "Authentic Italian cuisine.")
restaurant2 = Restaurant.create!(name: "Vegan Paradise", description: "Delicious vegan dishes.")
restaurant3 = Restaurant.create!(name: "Grill House", description: "Best grilled dishes in town.")

# Create some restaurant menus
menu1 = RestaurantMenu.create!(
  name: "Italian Classics",
  description: "A selection of traditional Italian dishes.",
  active: true,
  restaurant: restaurant1 
)

menu2 = RestaurantMenu.create!(
  name: "Vegan Delights",
  description: "A variety of delicious and healthy vegan options.",
  active: true,
  restaurant: restaurant2 
)

menu3 = RestaurantMenu.create!(
  name: "Grill Specialties",
  description: "Grilled dishes for meat lovers.",
  active: true,
  restaurant: restaurant3 
)

# Create menu items
item1 = MenuItem.create!(
  name: "Spaghetti Carbonara",
  description: "Classic Roman pasta with eggs, cheese, pancetta, and pepper.",
  price: 12.99,
  category: "Pasta",
  available: true
)

item2 = MenuItem.create!(
  name: "Margherita Pizza",
  description: "Tomato, mozzarella, and fresh basil.",
  price: 9.99,
  category: "Pizza",
  available: true
)

item3 = MenuItem.create!(
  name: "BBQ Ribs",
  description: "Tender ribs smothered in BBQ sauce.",
  price: 15.99,
  category: "Grill",
  available: true
)

# Associate menu items with restaurant menus using the join table
menu1.menu_items << item1
menu1.menu_items << item2
menu2.menu_items << item2
menu3.menu_items << item3

puts "Seed data created!"
