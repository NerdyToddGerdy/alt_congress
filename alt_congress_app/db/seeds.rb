# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 15.times do
#     User.create(
#         first_name: Faker::Name.first_name,
#         last_name: Faker::Name.last_name,
#         email: Faker::Internet.email,
#         party: Faker::Book.genre,
#         gender: "male",
#         address: Faker::Address.street_address,
#         zip: Faker::Address.zip,
#         State: Faker::Address.state_abbr,
#         district: Faker::Number.between(1, 13),
#         i_vote: Faker::Boolean.boolean,
#         i_fund: Faker::Boolean.boolean,
#         i_join: Faker::Boolean.boolean,
#         verified: Faker::Boolean.boolean
#     )
# end

4.times do
    QandA.create(
        question: Faker::StarWars.quote,
        answer: Faker::StarWars.quote
    )
end