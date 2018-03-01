# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
lorem =

User.create(email: 'user1@email.com', password: 'password')
User.create(email: 'user2@email.com', password: 'password')

Charity.create(name: 'Children of Ubud', description: Faker::Lorem.paragraph(10),
               video: 'https://www.youtube.com/watch?v=MPKWLDCO3aY', email: 'chou@email.com',
               website: 'https://rainbowtrust.org.uk/', user_id: 1)

Charity.create(name: 'New Dawns', description: Faker::Lorem.paragraph(10),
               video: 'https://www.youtube.com/watch?v=6s4HYYnOVQg', email: 'nd@email.com',
               website: 'https://www.actionforchildren.org.uk/', user_id: 1)

Charity.create(name: 'Happy future', description: Faker::Lorem.paragraph(10),
               video: 'https://www.youtube.com/watch?v=nkjwn240AMc', email: 'hf@email.com',
               website: 'https://www.children.org/', user_id: 2)

FrontWallet.create(balance: Faker::Number.positive, address: Faker::Bitcoin.testnet_address,
                   charity_id: 1)

FrontWallet.create(balance: Faker::Number.positive, address: Faker::Bitcoin.testnet_address,
                   charity_id: 2)

FrontWallet.create(balance: Faker::Number.positive, address: Faker::Bitcoin.testnet_address,
                   charity_id: 3)

BackWallet.create(balance: Faker::Number.positive, address: Faker::Bitcoin.testnet_address,
                   front_wallet_id: 1)

BackWallet.create(balance: Faker::Number.positive, address: Faker::Bitcoin.testnet_address,
                  front_wallet_id: 2)

BackWallet.create(balance: Faker::Number.positive, address: Faker::Bitcoin.testnet_address,
                  front_wallet_id: 3)

