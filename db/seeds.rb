# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Location.delete_all
User.delete_all
Quest.delete_all
Hunt.delete_all

Location.create([
{name: "Bank of America Tower", latitude: 40.755604, longitude: -73.984932},
{name: "Federation Tower", latitude: 55.749695, longitude: 37.537540},
{name: "World Trade Center Abu Dhabi", latitude: 24.487249, longitude: 54.357464},
{name: "CITIC Plaza", latitude: 23.142359, longitude: 113.324768},
{name: "Santa Monica Pier A", latitude: 34.010090, longitude: -118.496948},
{name: "Trump International Hotel and Tower", latitude: 41.888866, longitude: -87.626396},
{name: "Willis Tower", latitude: 41.878876, longitude: -87.635918},
{name: "One World Trade Center", latitude: 40.712742, longitude: -74.013382},
{name: "Naval Observatory Flagstaff", latitude: 35.184017, longitude: -111.740417},
{name: "Botanical Research Institute of Texas", latitude: 32.742027, longitude: -97.362564}
])

User.create([
  {username: "Marlon", password: "123"},
  {username: "David", password: "123"}
  ])

Quest.create([
  {name: "Temple of Doom", user_id: 1, location_id: 1, prize: 12},
  {name: "FlatIron Quest", user_id: 1, location_id: 2, prize: 20},
  {name: "Rake Db DROP!!!", user_id: 2, location_id: 1, prize: 10},
  {name: "Marlon and Davids Adventure", user_id: 2, location_id: 3, prize: 10}
  ])

Hunt.create([
  {user_id: 2, quest_id: 1},
  {user_id: 1, quest_id: 3}
  ])
