charity1_urls = [
    'https://i.imgur.com/THrJl5s.jpg',
    'https://i.imgur.com/x5uB7Dy.jpg',
    'https://i.imgur.com/dETxD81.jpg'
]

charity2_urls = [
    'https://i.imgur.com/4w3IIfY.jpg',
    'https://i.imgur.com/PQYqRAs.jpg',
    'https://i.imgur.com/ydPIV1E.jpg'
]

charity3_urls = [
    'https://i.imgur.com/W8XtkuD.jpg',
    'https://i.imgur.com/lL7W1DB.jpg',
    'https://i.imgur.com/SHTQDh0.jpg'
]

puts 'creating users'

User.create(email: 'user1@email.com', password: 'password')
User.create(email: 'user2@email.com', password: 'password')

puts 'creating charities'

Charity.create(name: 'Children of Ubud', description: Faker::Lorem.paragraph(10),
               video: 'https://www.youtube.com/watch?v=MPKWLDCO3aY', email: 'chou@email.com',
               website: 'https://rainbowtrust.org.uk/', user_id: 1)

Charity.create(name: 'New Dawns', description: Faker::Lorem.paragraph(10),
               video: 'https://www.youtube.com/watch?v=6s4HYYnOVQg', email: 'nd@email.com',
               website: 'https://www.actionforchildren.org.uk/', user_id: 1)

Charity.create(name: 'Happy future', description: Faker::Lorem.paragraph(10),
               video: 'https://www.youtube.com/watch?v=nkjwn240AMc', email: 'hf@email.com',
               website: 'https://www.children.org/', user_id: 2)

puts 'adding pictures to charities'

Charity.first.photo_urls = charity1_urls
Charity.second.photo_urls = charity2_urls
Charity.third.photo_urls = charity3_urls

puts 'creating front wallets'

FrontWallet.create(balance: Faker::Number.positive, address: Faker::Bitcoin.testnet_address,
                   charity_id: 1)

FrontWallet.create(balance: Faker::Number.positive, address: Faker::Bitcoin.testnet_address,
                   charity_id: 2)

FrontWallet.create(balance: Faker::Number.positive, address: Faker::Bitcoin.testnet_address,
                   charity_id: 3)

puts 'creating back wallets'

BackWallet.create(balance: Faker::Number.positive, address: Faker::Bitcoin.testnet_address,
                   front_wallet_id: 1)

BackWallet.create(balance: Faker::Number.positive, address: Faker::Bitcoin.testnet_address,
                  front_wallet_id: 2)

BackWallet.create(balance: Faker::Number.positive, address: Faker::Bitcoin.testnet_address,
                  front_wallet_id: 3)

puts 'seed completed'