# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "----------- delete Pool -----------"
Pool.destroy_all
puts "----------- create Pool -----------"
User.create(first_name: 'john', last_name: "pool")
User.create(first_name: 'jack', last_name: "poolMaster")

Pool.create(name: 'good pool', description: "vraiment une good pool", max_people: 5, price: "100$", address: "Paris")
Pool.create(name: 'nice pool', description: "nice pool", max_people: 2, price: "200$", address: "London")
puts "----------- OK -----------"
