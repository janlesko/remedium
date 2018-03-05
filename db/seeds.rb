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

charity4_urls = [
    'https://i.imgur.com/THrJl5s.jpg',
    'https://i.imgur.com/x5uB7Dy.jpg',
    'https://i.imgur.com/dETxD81.jpg'
]

charity5_urls = [
    'https://i.imgur.com/4w3IIfY.jpg',
    'https://i.imgur.com/PQYqRAs.jpg',
    'https://i.imgur.com/ydPIV1E.jpg'
]

charity6_urls = [
    'https://i.imgur.com/W8XtkuD.jpg',
    'https://i.imgur.com/lL7W1DB.jpg',
    'https://i.imgur.com/SHTQDh0.jpg'
]

puts 'creating users'

User.create(email: 'user1@email.com', password: 'password')
User.create(email: 'user2@email.com', password: 'password')
User.create(email: 'user3@email.com', password: 'password')
User.create(email: 'user4@email.com', password: 'password')
User.create(email: 'user5@email.com', password: 'password')
User.create(email: 'user6@email.com', password: 'password')

puts 'creating charities'

Charity.create(name: 'Children of Ubud', description: Faker::Lorem.paragraph(10),
               video: 'https://www.youtube.com/watch?v=MPKWLDCO3aY', email: 'chou@email.com',
               website: 'https://rainbowtrust.org.uk/', user_id: 1)

Charity.create(name: 'New Dawns', description: Faker::Lorem.paragraph(10),
               video: 'https://www.youtube.com/watch?v=6s4HYYnOVQg', email: 'nd@email.com',
               website: 'https://www.actionforchildren.org.uk/', user_id: 2)

Charity.create(name: 'Happy Future', description: Faker::Lorem.paragraph(10),
               video: 'https://www.youtube.com/watch?v=nkjwn240AMc', email: 'hf@email.com',
               website: 'https://www.children.org/', user_id: 3)

Charity.create(name: 'Smiles', description: Faker::Lorem.paragraph(10),
               video: 'https://www.youtube.com/watch?v=nkjwn240AMc', email: 'smile@email.com',
               website: 'https://www.children.org/', user_id: 4)

Charity.create(name: 'Educate the World', description: Faker::Lorem.paragraph(10),
               video: 'https://www.youtube.com/watch?v=nkjwn240AMc', email: 'ew@email.com',
               website: 'https://www.children.org/', user_id: 5)

Charity.create(name: 'Blue Planet', description: Faker::Lorem.paragraph(10),
               video: 'https://www.youtube.com/watch?v=nkjwn240AMc', email: 'bp@email.com',
               website: 'https://www.children.org/', user_id: 6)

puts 'creating front wallets'

FrontWallet.create(address: "migoNCktJqY6VkZh3ifGHTGU1w3M5JaNUP", charity_id: 1)
FrontWallet.create(address: "mqy6ezdurhtZbY7sEonB3qQ7wdzKwLXX7d", charity_id: 2)
FrontWallet.create(address: "n1qWkEZWAxSoGTzBTL54Po2pjbduwxtY52", charity_id: 3)
FrontWallet.create(address: "n21FU14AM4PLuXyoZwhJ2B183GXrcyA1K1", charity_id: 4)
FrontWallet.create(address: "mhZCkVYV7co713YewHVy4ChEiFnbsgEmGp", charity_id: 5)
FrontWallet.create(address: "mtuCbpTErcNABkwN7d9D2FDL8s5RjtiggD", charity_id: 6)

puts 'creating back wallets'

BackWallet.create(address: "n1PuBu1FxiQCzmi1hnKi2bcoWu26VY9g9L", front_wallet_id: 1)
BackWallet.create(address: "mwmd4YL3omsn7aX4PaMyAg4foyZnZqtigp", front_wallet_id: 2)
BackWallet.create(address: "mwzbn61YfMyTioWGWM3yfm8N6yEhD3tTj5", front_wallet_id: 3)
BackWallet.create(address: "mtmGLmTAsLBBPaNpPpykvwpWJmYAUq8cPz", front_wallet_id: 4)
BackWallet.create(address: "mgPMM8UxLNn7gDCVbioywqzYPReQf4ZsHu", front_wallet_id: 5)
BackWallet.create(address: "mxq76Eq1sEAMthv5xMkzWpEtPToSkHdN5c", front_wallet_id: 6)

puts 'adding pictures to charities'

Charity.first.photo_urls = charity1_urls
Charity.second.photo_urls = charity2_urls
Charity.third.photo_urls = charity3_urls
Charity.fourth.photo_urls = charity4_urls
Charity.fifth.photo_urls = charity5_urls
Charity.last.photo_urls = charity6_urls

puts 'adding transactions'

Transaction.create(sender_adress: Faker::Bitcoin.testnet_address, amount: Faker::Number.positive, charity_id: 1)
Transaction.create(sender_adress: Faker::Bitcoin.testnet_address, amount: Faker::Number.positive, charity_id: 2)
Transaction.create(sender_adress: Faker::Bitcoin.testnet_address, amount: Faker::Number.positive, charity_id: 3)
Transaction.create(sender_adress: Faker::Bitcoin.testnet_address, amount: Faker::Number.positive, charity_id: 1)


puts 'seed completed'
