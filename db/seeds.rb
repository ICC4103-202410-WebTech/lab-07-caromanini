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
Tag.delete_all

t1 = Tag.create!(
    name: "Tag1"
)
t2= Tag.create!(
    name: "Tag2"
)
t3 = Tag.create!(
    name: "Tag3"
)
t4 = Tag.create!(
    name: "Tag4"
)
t5 = Tag.create!(
    name: "Tag5"
)

5.times do 
    User.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        password: Faker::Internet.password,
        created_at: Faker::Date.between(from: "2000-01-01", to: "2024-04-22"),
        updated_at: Faker::Date.between(from: "2000-01-01", to: "2024-04-12")
    )
end

users_array = Array.new 
for user in User.all do
    users_array.push(user.id)
end

p1 = Post.create!(
    user_id: users_array.at(0),
    title: Faker::Lorem.sentence,
    content: Faker::Quote.famous_last_words,
    published_at: Faker::Date.between(from: "2000-01-01", to: "2024-04-12"),
    answers_count: Faker::Number.between(from: 1, to: 1000),
    likes_count: Faker::Number.between(from: 1, to: 1000),
    created_at: Faker::Date.between(from: "2000-01-01", to: "2024-04-12"),
    updated_at: Faker::Date.between(from: "2000-01-01", to: "2024-04-12")
)

p2 = Post.create!(
    user_id: users_array.at(1),
    title: Faker::Lorem.sentence,
    content: Faker::Quote.famous_last_words,
    published_at: Faker::Date.between(from: "2000-01-01", to: "2024-04-12"),
    answers_count: Faker::Number.between(from: 1, to: 1000),
    likes_count: Faker::Number.between(from: 1, to: 1000),
    created_at: Faker::Date.between(from: "2000-01-01", to: "2024-04-12"),
    updated_at: Faker::Date.between(from: "2000-01-01", to: "2024-04-12")
)

p3 = Post.create!(
    user_id: users_array.at(2),
    title: Faker::Lorem.sentence,
    content: Faker::Quote.famous_last_words,
    published_at: Faker::Date.between(from: "2000-01-01", to: "2024-04-12"),
    answers_count: Faker::Number.between(from: 1, to: 1000),
    likes_count: Faker::Number.between(from: 1, to: 1000),
    created_at: Faker::Date.between(from: "2000-01-01", to: "2024-04-12"),
    updated_at: Faker::Date.between(from: "2000-01-01", to: "2024-04-12")
)

p4 = Post.create!(
    user_id: users_array.at(3),
    title: Faker::Lorem.sentence,
    content: Faker::Quote.famous_last_words,
    published_at: Faker::Date.between(from: "2000-01-01", to: "2024-04-12"),
    answers_count: Faker::Number.between(from: 1, to: 1000),
    likes_count: Faker::Number.between(from: 1, to: 1000),
    created_at: Faker::Date.between(from: "2000-01-01", to: "2024-04-12"),
    updated_at: Faker::Date.between(from: "2000-01-01", to: "2024-04-12")
)

p5 = Post.create!(
    user_id: users_array.at(4),
    title: Faker::Lorem.sentence,
    content: Faker::Quote.famous_last_words,
    published_at: Faker::Date.between(from: "2000-01-01", to: "2024-04-12"),
    answers_count: Faker::Number.between(from: 1, to: 1000),
    likes_count: Faker::Number.between(from: 1, to: 1000),
    created_at: Faker::Date.between(from: "2000-01-01", to: "2024-04-12"),
    updated_at: Faker::Date.between(from: "2000-01-01", to: "2024-04-12")
)

p6 = Post.create!(
    user_id: users_array.at(1),
    title: Faker::Lorem.sentence,
    content: Faker::Quote.famous_last_words,
    published_at: Faker::Date.between(from: "2000-01-01", to: "2024-04-12"),
    answers_count: Faker::Number.between(from: 1, to: 1000),
    likes_count: Faker::Number.between(from: 1, to: 1000),
    created_at: Faker::Date.between(from: "2000-01-01", to: "2024-04-12"),
    updated_at: Faker::Date.between(from: "2000-01-01", to: "2024-04-12")
)

p7 = Post.create!(
    user_id: users_array.at(2),
    title: Faker::Lorem.sentence,
    content: Faker::Quote.famous_last_words,
    published_at: Faker::Date.between(from: "2000-01-01", to: "2024-04-12"),
    answers_count: Faker::Number.between(from: 1, to: 1000),
    likes_count: Faker::Number.between(from: 1, to: 1000),
    created_at: Faker::Date.between(from: "2000-01-01", to: "2024-04-12"),
    updated_at: Faker::Date.between(from: "2000-01-01", to: "2024-04-12")
)

p8 = Post.create!(
    user_id: users_array.at(3),
    title: Faker::Lorem.sentence,
    content: Faker::Quote.famous_last_words,
    published_at: Faker::Date.between(from: "2000-01-01", to: "2024-04-12"),
    answers_count: Faker::Number.between(from: 1, to: 1000),
    likes_count: Faker::Number.between(from: 1, to: 1000),
    created_at: Faker::Date.between(from: "2000-01-01", to: "2024-04-12"),
    updated_at: Faker::Date.between(from: "2000-01-01", to: "2024-04-12")
)

p9 = Post.create!(
    user_id: users_array.at(4),
    title: Faker::Lorem.sentence,
    content: Faker::Quote.famous_last_words,
    published_at: Faker::Date.between(from: "2000-01-01", to: "2024-04-12"),
    answers_count: Faker::Number.between(from: 1, to: 1000),
    likes_count: Faker::Number.between(from: 1, to: 1000),
    created_at: Faker::Date.between(from: "2000-01-01", to: "2024-04-12"),
    updated_at: Faker::Date.between(from: "2000-01-01", to: "2024-04-12")
)

p10 = Post.create!(
    user_id: users_array.at(0),
    title: Faker::Lorem.sentence,
    content: Faker::Quote.famous_last_words,
    published_at: Faker::Date.between(from: "2000-01-01", to: "2024-04-12"),
    answers_count: Faker::Number.between(from: 1, to: 1000),
    likes_count: Faker::Number.between(from: 1, to: 1000),
    created_at: Faker::Date.between(from: "2000-01-01", to: "2024-04-12"),
    updated_at: Faker::Date.between(from: "2000-01-01", to: "2024-04-12")
)

PostTag.create(
    post: p1,
    tag: t1
)

PostTag.create(
    post: p2,
    tag: t2
)

PostTag.create(
    post: p3,
    tag: t3
)

PostTag.create(
    post: p4,
    tag: t4
)

PostTag.create(
    post: p5,
    tag: t5
)

PostTag.create(
    post: p6,
    tag: t1
)

PostTag.create(
    post: p7,
    tag: t2
)

PostTag.create(
    post: p8,
    tag: t3
)

PostTag.create(
    post: p9,
    tag: t4
)

PostTag.create(
    post: p10,
    tag: t5
)
