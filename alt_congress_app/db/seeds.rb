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

    QandA.create(
        question:  'What is ALTcongress?',
        answer: "An experiment in social civics that will facilitate collaborative solutions to Americas greatest challenges."
    )
    QandA.create(
        question:  'How do you expect to compete with a 225-year-old institution?',
        answer: 'By harnessing the very best of the nearly 220 million Americans eligible to vote.'
    )
    QandA.create(
        question:  'What can I do?',
        answer: 'We are asking that you voluntarily accept a tax on your time. That you divert a small amount of your TV/internet time to better understand our government and how it works. In return we promise to make it as easy and as engaging as humanly possible.'
    )
    QandA.create(
        question:  "What's wrong with my ideology?",
        answer:' Nothing, so long as you remember that your ideology is a set of beliefs that may differ from others.'
    )
    QandA.create(
        question:  'Is ALTcongress conservative or liberal?',
        answer: 'Neither. However, we understand that is almost impossible to believe these days. The most important thing ALTcongress will do as an organization is to objectively facilitate a collaborative process free from any preconceived ideologies.'
    )
    QandA.create(
        question:  'Why should I trust ALTcongress?',
        answer: 'We promise that we will be transparent and objective in everything we do. Our goal is to build an organization that enables and empowers all voters to take back their government from special interests.'
    )
    QandA.create(
        question: 'Why will the current Congress consider our bills?' ,
        answer: 'The ALTcongress website will track the support of each and every proposed bill by congressional district. Additionally, the ALTCONGRESS team will help empower the electorate and bring pressure to bear on our elected officials.'
    )