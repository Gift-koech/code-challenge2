# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all
Pizza.destroy_all
RestaurantPizza.destroy_all

6.times do
  Restaurant.create(name:Faker::Restaurant.name, address: Faker::Address.full_address)
end

5.times do
   ingredients = []
   5.times do
    ingredients << Faker::Food.ingredient
  end
  Pizza.create(name:ingredients[-1], ingredients:ingredients.join(", "))
end

RestaurantPizza.create(restaurant_id: 1, pizza_id: 2)
RestaurantPizza.create(restaurant_id: 1, pizza_id: 3 )
RestaurantPizza.create(restaurant_id: 3, pizza_id: 1)
RestaurantPizza.create(restaurant_id: 3, pizza_id: 2)
RestaurantPizza.create(restaurant_id: 2, pizza_id: 1) 