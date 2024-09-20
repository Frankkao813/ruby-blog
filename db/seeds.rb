# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb

require 'faker'

# Clear existing data
Article.destroy_all

# Create 10 sample articles
begin
10.times do
  Article.find_or_create_by!(
    title: Faker::Book.unique.title,
    author: Faker::Book.author,
    body: Faker::Lorem.paragraph(sentence_count: 5),
    
  )
end

puts "Created #{Article.count} articles."


rescue ActiveRecord::RecordInvalid => e
    puts "Error creating articles: #{e.message}"
end
