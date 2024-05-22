puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
osaka = { name: "Osaka", address: "7 Boundary St, London E2 7JE", category: "chinese", rating: 5 }
noe = { name: "Noe", address: "56A Shoreditch High St, London E1 6PQ", category: "chinese", rating: 5 }
lucia = { name: "Lucia", address: "56A Avenida de los Shyris, Quito E2 6PQ", category: "chinese", rating: 3 }
banhmi = { name: "Banh Mi", address: "31A Republica del Salvador, Quito S2 6PQ", category: "chinese", rating: 2 }
romoloeremo = { name: "Romolo E Remo", address: "25B Calle Gonzales Suarez, Quito E2 4TA", category: "chinese", rating: 4 }

[osaka, noe, lucia, banhmi, romoloeremo].each do |attributes|
restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
