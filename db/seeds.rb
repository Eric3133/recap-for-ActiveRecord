# This is where you can create initial data for your app.
# db/seeds.rb
# puts 'Creating restaurants...'
# tour_d_argent = Restaurant.new(name: "La Tour d'Argent")
# tour_d_argent.save!

# chez_gladines = Restaurant.new(name: "Chez Gladines")
# chez_gladines.save!
# puts 'Finished!'
require "faker"

# 100.times do
#   restaurant = Restaurant.new(name: Faker::Restaurant.name )
#   restaurant.save!
# end

require "json"

require "rest-client"

response = RestClient.get "https://api.github.com/users/lewagon/repos"
repos = JSON.parse(response)

repos.each do |repo|
  restaurant = Restaurant.new(name: "repo[:name]")
  restaurant.save
end
