# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

Post.delete_all
User.delete_all

5.times do 
    User.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        password: Faker::Internet.password,
        created_at: Faker::Date.between(from: "2000-01-01", to: "2024-04-22"),
        updated_at: Faker::Date.between(from: "2000-01-01", to: "2024-04-12")
    )
end

10.times do
    random_user = User.all.sample

    Post.create!(
        user_id: random_user.id,
        title: Faker::Lorem.sentence,
        content: Faker::Quote.famous_last_words,
        published_at: Faker::Date.between(from: "2000-01-01", to: "2024-04-12"),
        answers_count: Faker::Number.between(from: 1, to: 1000),
        likes_count: Faker::Number.between(from: 1, to: 1000),
        created_at: Faker::Date.between(from: "2000-01-01", to: "2024-04-12"),
        updated_at: Faker::Date.between(from: "2000-01-01", to: "2024-04-12")
    )
end