# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

a_team = Team.create!(name: "A Team")
b_team = Team.create!(name: "B Team")
c_team = Team.create!(name: "C Team")

alice = User.create!(name: "Alice", team_id: a_team.id)
bob = User.create!(name: "Bob", team_id: a_team.id)
charlie = User.create!(name: "Charlie", team_id: b_team.id)

alice_points = Point.create!(user_id: alice.id, points: 10, reason: "Acing the test")
bob_points = Point.create!(user_id: bob.id, points: 5)
charlie_points = Point.create!(user_id: charlie.id, points: 7, reason: "Cleaning the house")
