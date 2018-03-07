charity1_urls = [
    'https://i.imgur.com/efXuPK8.jpg',
    'https://i.imgur.com/1AxS3gC.jpg',
    'https://i.imgur.com/nGKNMGZ.jpg'
]

charity2_urls = [
    'https://i.imgur.com/OchJeDc.jpg',
    'https://i.imgur.com/G91Gngk.jpg',
    'https://i.imgur.com/EdlXSRo.jpg'
]

charity3_urls = [
    'https://i.imgur.com/xnWLGji.jpg',
    'https://i.imgur.com/EXGIFm4.jpg',
    'https://i.imgur.com/pTB1zLm.jpg'
]

charity4_urls = [
    'https://i.imgur.com/qyfmR1F.jpg',
    'https://i.imgur.com/j8Fd6wW.jpg',
    'https://i.imgur.com/f31svuF.jpg'
]

charity5_urls = [
    'https://i.imgur.com/oloulY1.jpg',
    'https://i.imgur.com/oAy1zFx.jpg',
    'https://i.imgur.com/rPebjXn.jpg'
]

charity6_urls = [
    'https://i.imgur.com/PE6mYTb.jpg',
    'https://i.imgur.com/Dpj0CrK.jpg',
    'https://i.imgur.com/i0Bsky7.jpg'
]

puts 'creating users'

User.create(email: 'user1@email.com', password: 'password')
User.create(email: 'user2@email.com', password: 'password')
User.create(email: 'user3@email.com', password: 'password')
User.create(email: 'user4@email.com', password: 'password')
User.create(email: 'user5@email.com', password: 'password')
User.create(email: 'user6@email.com', password: 'password')

puts 'creating charities'

Charity.create(name: 'Green-books.org', description: 'Awakening natural intuitions of children
We believe that the most effective way to solve environmental issues in the long-term is to prevention through education. Children are the future of this planet and love for nature is innate. We inspire and lead by example - because “what children see, children do”.

2 Encouraging reading for pleasure
Studies show literacy and reading as a hobby empower children to make smarter choices in the future. It concerns environment as well as gender inequality, civic engagement, critical thinking, poverty, nutrition, birth control, malaria and many more important topics.

3 Nurturing the Green Gurus
The most effective way to spread any knowledge is to educate the educators. The Green Gurus (Eco-Library coordinators) are at the heart of our quest to educate, inspire, and transform the children and communities to live more sustainably. Learn about our tools to nurture the Green Gurus.',
               video: 'https://www.youtube.com/watch?v=NGkZUodZ7W0', email: 'petr@green-books.org',
               website: 'https://green-books.org', user_id: 1)

Charity.create(name: 'Amnesty International', description: 'Through our detailed research and determined campaigning, we help fight abuses of human rights worldwide. We bring torturers to justice. Change oppressive laws. And free people jailed just for voicing their opinion.',
               video: 'https://www.youtube.com/watch?v=wfKSFY6nqKQ', email: 'contactus@amnesty.org',
               website: 'https://www.amnesty.org/', user_id: 2)

Charity.create(name: 'WWF', description: 'WE DO IT FOR THE PLANET
In order to protect nature we need to take on the big issues facing our planet.

We are facing up to challenges such as the urgent threat of climate change. We are also promoting sustainable use of resources, helping us all change the way we live and working with business and government to protect our planet for generations to come. Only then can we develop a world where people and wildlife thrive.',
               video: 'https://www.youtube.com/watch?v=DQuUnQ-QiB0', email: 'info@wwf.com',
               website: 'https://www.wwf.org.uk/', user_id: 3)

Charity.create(name: 'Greenpeace', description: 'People Power. This is where you come in. If you want a green and just world, we’ll march alongside you. If you’ve got ideas for how to get there, we want to learn from you. Let’s dream together, plan together and act together. Change the world. Imagine a world where forests flourish and oceans are full of life. Where energy is as clean as a mountain stream. Where everyone has security, dignity and joy. We can’t build this future alone, but we can build it together.',
               video: 'https://www.youtube.com/watch?v=r_ujV9vZIoQ', email: 'info.int@greenpeace.org',
               website: 'https://www.greenpeace.org/international/', user_id: 4)

Charity.create(name: 'Medecins sans Frontiers', description: 'Médecins Sans Frontières is a private, international association. The association is made up mainly of doctors and health sector workers and is also open to all other professions which might help in achieving its aims. All of its members agree to honour the following principles:
Médecins Sans Frontières provides assistance to populations in distress, to victims of natural or man-made disasters and to victims of armed conflict. They do so irrespective of race, religion, creed or political convictions.
Médecins Sans Frontières observes neutrality and impartiality in the name of universal medical ethics and the right to humanitarian assistance and claims full and unhindered freedom in the exercise of its functions.',
               video: 'https://www.youtube.com/watch?v=Uoq2EG3BpS4', email: ' office-ldn@london.msf.org',
               website: 'http://www.msf.org/', user_id: 5)

Charity.create(name: 'UNHCR', description: 'We strive to ensure that everyone has the right to seek asylum and find safe refuge in another State, with the option to eventually return home, integrate or resettle.

During times of displacement, we provide critical emergency assistance in the form of clean water, sanitation and healthcare, as well as shelter, blankets, household goods and sometimes food. We also arrange transport and assistance packages for people who return home, and income-generating projects for those who resettle.

Our help transforms broken lives.',
               video: 'https://www.youtube.com/watch?v=5ymxq7D2DfA', email: 'gbrlo@unhcr.org',
               website: 'http://www.unhcr.org/', user_id: 6)

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

puts 'adding items'

Item.create(name: "math book", price: 3.50, quantity: 100, charity_id: 1 )
Item.create(name: "water filter", price: 8, quantity: 500, charity_id: 1 )
Item.create(name: "tent", price: 12, quantity: 250, charity_id: 1 )
Item.create(name: "environmental book", price: 7.50, quantity: 100, charity_id: 2 )
Item.create(name: "rice", price: 1, quantity: 500, charity_id: 2 )
Item.create(name: "antibiotics", price: 17.32, quantity: 550, charity_id: 2 )
Item.create(name: "science book", price: 3.50, quantity: 100, charity_id: 3 )
Item.create(name: "water bottle", price: 8, quantity: 700, charity_id: 3 )
Item.create(name: "syringe", price: 18.50, quantity: 150, charity_id: 3 )

puts 'adding transactions'

Transaction.create(sender_adress: Faker::Bitcoin.testnet_address, amount: Faker::Number.positive, charity_id: 1)
Transaction.create(sender_adress: Faker::Bitcoin.testnet_address, amount: Faker::Number.positive, charity_id: 2)
Transaction.create(sender_adress: Faker::Bitcoin.testnet_address, amount: Faker::Number.positive, charity_id: 3)
Transaction.create(sender_adress: Faker::Bitcoin.testnet_address, amount: Faker::Number.positive, charity_id: 1)


puts 'seed completed'
