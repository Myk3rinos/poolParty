# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "----------- delete User -----------"

Booking.destroy_all
Pool.destroy_all
User.destroy_all

puts "----------- create User -----------"
john = User.create(first_name: 'john', last_name: "pool", email: "john.pool@gmail.fr", password: "rerere", phone_number: "343 123 4321")
jack = User.create(first_name: 'jack', last_name: "hash", email: "jack.hash@gmail.fr", password: "rerere", phone_number: "923 245 3531")
joe = User.create(first_name: 'joe', last_name: "rails", email: "joe.rails@gmail.com", password: "rerere", phone_number: "453 165 4311")
jim = User.create(first_name: 'jim', last_name: "ruby", email: "jim.ruby@gmail.com", password: "rerere", phone_number: "313 543 1345")

puts "----------- create Pool -----------"
pool1 = Pool.create(user_id: john.id, name: 'nice pool', description: "Relaxation Oasis Pool: This luxurious pool, surrounded by lush greenery, offers a true oasis of relaxation. With its crystal-clear water, integrated jacuzzi, and sunken beach, it promises an unparalleled swimming experience.", max_people: 20, price: 200, rating: 4, address: "London", url_photo: "https://images.unsplash.com/photo-1543489822-c49534f3271f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2532&q=80")
pool2 = Pool.create(user_id: jack.id, name: 'little pool', description: "Sunny Family Pool: Perfect for families, this large, sunny pool features a splash pad for the little ones and a deep end for swimmers. The lounge chairs around the pool invite you to relax and soak up the sun.", max_people: 10, price: 3500, rating: 3, address: "Madrid", url_photo: "https://images.unsplash.com/photo-1576013551627-0cc20b96c2a7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2370&q=80")
pool3 = Pool.create(user_id: joe.id, name: 'my super pool', description: "Panoramic Pool: This rooftop infinity pool offers breathtaking panoramic views of the city. The city's twinkling lights at dusk create an idyllic setting for an evening swim.", max_people: 5, price: 500, rating: 2, address: "Miami", url_photo: "https://images.unsplash.com/photo-1551491603-7d38b9e605f5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1035&q=80")
pool4 = Pool.create(user_id: john.id, name: 'cool my pool', description: "Natural Pool: This gorgeous natural pool is seamlessly integrated into the surrounding landscape. With its pure, chemical-free water, it offers a refreshing swimming experience in harmony with nature.", max_people: 1, price: 50_000, rating: 2, address: "Paris", url_photo: "https://images.unsplash.com/photo-1575429198097-0414ec08e8cd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2370&q=80")
pool5 = Pool.create(user_id: jim.id, name: 'olympique pool', description: "Indoor Aquatic Center: This indoor aquatic center features an Olympic-sized pool, water slide, and relaxation area with a sauna and steam room. It's the perfect place to swim, have fun, and relax no matter the weather.", max_people: 2, price: 1000, rating: 1, address: "New york", url_photo: "https://images.unsplash.com/photo-1576610616656-d3aa5d1f4534?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1035&q=80")
pool6 = Pool.create(user_id: john.id, name: 'best pool', description: "Tropical Pool: This exotic pool, surrounded by palm trees and tropical flowers, transports you into a vacation vibe. The water temperature is always pleasant, and the pool bar serves refreshing cocktails.", max_people: 2, price: 10, rating: 5, address: "Berlin", url_photo: "https://images.unsplash.com/photo-1536745511564-a5fa6e596e7b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1096&q=80")

puts "----------- create Booking -----------"
Booking.create(user_id: john.id, pool_id: pool1.id, nomber_people: 2, price: 10, validation: false)
Booking.create(user_id: joe.id, pool_id: pool2.id, nomber_people: 1, price: 30, validation: false)
Booking.create(user_id: jim.id, pool_id: pool3.id, nomber_people: 3, price: 20, validation: true)
Booking.create(user_id: jack.id, pool_id: pool4.id, nomber_people: 4, price: 40, validation: false)

puts ""
puts "----------- creation seed OK -----------"
