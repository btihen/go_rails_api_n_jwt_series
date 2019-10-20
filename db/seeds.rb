# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(email: 'btihen@gmail.com', password: 'StrongNyima', password_confirmation: 'StrongNyima')

l = Location.create(name: "Bolligen")
l.recordings.create(temp: 14, status: "heavy rain", created_at: DateTime.now-4.days, updated_at: DateTime.now-4.days)
l.recordings.create(temp: 15, status: "rain", created_at: DateTime.now-3.days, updated_at: DateTime.now-3.days)
l.recordings.create(temp: 19, status: "partially cloudy", created_at: DateTime.now-2.days, updated_at: DateTime.now-2.days)
l.recordings.create(temp: 26, status: "sunny", created_at: DateTime.now-1.day, updated_at: DateTime.now-1.day)
l.recordings.create(temp: 20, status: "cloudy", created_at: DateTime.now, updated_at: DateTime.now)
l.save

l = Location.create(name: "Leysin")
l.recordings.create(temp: 12, status: "heavy rain", created_at: DateTime.now-4.days, updated_at: DateTime.now-4.days)
l.recordings.create(temp: 10, status: "rain", created_at: DateTime.now-3.days, updated_at: DateTime.now-3.days)
l.recordings.create(temp: 17, status: "partially cloudy", created_at: DateTime.now-2.days, updated_at: DateTime.now-2.days)
l.recordings.create(temp: 24, status: "sunny", created_at: DateTime.now-1.day, updated_at: DateTime.now-1.day)
l.recordings.create(temp: 18, status: "cloudy", created_at: DateTime.now, updated_at: DateTime.now)
l.save 
