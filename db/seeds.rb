# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
ben = User.create!(username: "ben", password: "password")
emma = User.create!(username: "emma", password: "password")
ruth = User.create!(username: "ruth", password: "password")
joe = User.create!(username: "joe", password: "password")
helen = User.create!(username: "helen", password: "password")

Message.destroy_all
ben.messages.create!(body: "Hi there!")
ben.messages.create!(body: "How's it going!")
emma.messages.create!(body: "Good thanks")
joe.messages.create!(body: "Hey everyone!")
helen.messages.create!(body: "Halllooooooo")
