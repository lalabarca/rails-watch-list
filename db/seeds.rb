# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Movie.create(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)

require 'json'
require 'open-uri'

puts "Cleaning database..."
Movie.destroy_all

url = 'http://tmdb.lewagon.com/movie/top_rated'
user_serialized = URI.open(url).read
datas = JSON.parse(user_serialized)
results = datas["results"].first(10)
puts "Creating movies..."

results.each do |movie|
  new_movie = Movie.create!(
    title: movie["title"], overview: movie["overview"],
    poster_url: "https://image.tmdb.org/t/p/w500#{movie["poster_path"]}", rating: movie["vote_average"]
  )
  puts "Created #{new_movie[:title]}"
end

puts "Finished"
