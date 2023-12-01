# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

FoodPlace.insert_all([
  {

    name: "D'Freud",
    description: "Disfruta también de nuestra variedad de platos marinos , Makis y más.... 🦞🦑🦀🐟",
    address: "Tito Jaime 595",
    phone_number: "984285080",
    opening_hours: "10 am - 10 pm",
  },
  {
    name: "Terranova",
    description: "Food and Drinks lounge bar.",
    address: "Av. Alameda Perú 801",
    phone_number: "972492465",
    opening_hours: "",
  },
  {
    name: "Naranja Mecánica",
    description: "Carnes, pastas, bebidas y mucho más!",
    address: "Jr. Callao 268",
    phone_number: "950735076",
    opening_hours: "6 pm - 11 pm",
  },
  {
    name: "Tasty hot",
    description: "Restaurante de comida rápida en Tingo María.",
    address: "Jirón Monzón 532",
    phone_number: "936828743",
    opening_hours: "6:30pm a 11:00pm",
  }
])

TouristPlace.insert_all([
  {
    name: "Catarata de Santa Carmen",
    description: "La catarata de Santa Carmen es una cascada de agua que se encuentra en el distrito de Mariano Dámaso Beraún, en la provincia de Leoncio Prado, en el departamento de Huánuco, en el Perú. Se encuentra a 1.5 km de la ciudad de Tingo María.",
    address: "Tingo María",
    phone_number: "936828743",
    opening_hours: "6:30pm a 11:00pm",
    website_url: "https://www.facebook.com/Catarata-de-Santa-Carmen-104857771184306/",
    photo: "",
    label: "Swimming",
  },
  {
    name: "Cueva de las Lechuzas",
    description: "La Cueva de las Lechuzas es una cueva ubicada en el distrito de Mariano Dámaso Beraún, en la provincia de Leoncio Prado, en el departamento de Huánuco, en el Perú. Se encuentra a 5 km de la ciudad de Tingo María.",
    address: "Tingo María",
    phone_number: "936828743",
    opening_hours: "6:30pm a 11:00pm",
    website_url: "https://www.facebook.com/Cueva-de-las-Lechuzas-104857771184306/",
    photo: "",
    label: "Trekking",
  }
])

puts "seeded #{FoodPlace.count} food places 🍔"
puts "seeded #{TouristPlace.count} tourist places 🏞"
