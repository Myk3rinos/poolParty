# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "----------- delete User -----------"
User.destroy_all
Pool.destroy_all
Booking.destroy_all

puts "----------- create User -----------"
User.create(first_name: 'john', last_name: "pool", email: "john.pool@gmail.fr", password: "rerere", phone_number: "343 123 4321")
User.create(first_name: 'jack', last_name: "hash", email: "jack.hash@gmail.fr", password: "rerere", phone_number: "923 245 3531")
User.create(first_name: 'joe', last_name: "rails", email: "joe.rails@gmail.com", password: "rerere", phone_number: "453 165 4311")
User.create(first_name: 'jim', last_name: "ruby", email: "jim.ruby@gmail.com", password: "rerere", phone_number: "313 543 1345")

puts "----------- create Pool -----------"
Pool.create(user_id: 1, name: 'nice pool', description: "ma petite piscine", max_people: 20, price: 200, rating: 4, address: "London", url_photo: "https://images.unsplash.com/photo-1543489822-c49534f3271f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2532&q=80")
Pool.create(user_id: 2, name: 'little pool', description: "nice pool", max_people: 10, price: 3500, rating: 3, address: "Madrid", url_photo: "https://images.unsplash.com/photo-1576013551627-0cc20b96c2a7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2370&q=80")
Pool.create(user_id: 2, name: 'my super pool', description: "pool and sea", max_people: 5, price: 500, rating: 2, address: "Miami", url_photo: "https://images.unsplash.com/photo-1551491603-7d38b9e605f5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1035&q=80")
Pool.create(user_id: 3, name: 'cool my pool', description: "vue dégagée", max_people: 1, price: 50_000, rating: 2, address: "Paris", url_photo: "https://images.unsplash.com/photo-1575429198097-0414ec08e8cd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2370&q=80")
Pool.create(user_id: 3, name: 'olympique pool', description: "olympique pool for you", max_people: 2, price: 1000, rating: 1, address: "New york", url_photo: "https://images.unsplash.com/photo-1576610616656-d3aa5d1f4534?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1035&q=80")
Pool.create(user_id: 4, name: 'best pool', description: "nice pool", max_people: 2, price: 10, rating: 5, address: "Berlin", url_photo: "https://images.unsplash.com/photo-1536745511564-a5fa6e596e7b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1096&q=80")

puts "----------- create Booking -----------"
Booking.create(user_id: 4, pool_id: 1, nombre_people: 2, price: 10)
Booking.create(user_id: 1, pool_id: 4, nombre_people: 1, price: 30)
Booking.create(user_id: 2, pool_id: 2, nombre_people: 3, price: 20)
Booking.create(user_id: 3, pool_id: 3, nombre_people: 4, price: 40)

puts ""
puts "----------- creation seed OK -----------"
