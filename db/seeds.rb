# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
User.destroy_all
Experience.destroy_all

puts "every data is destroyed"

User.create(email: 'user1@mail.com', username: 'user1', password: '123456', role: 'user', first_name: 'user', last_name: 'one', bio: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", avatar: 'https://picsum.photos/50/50')
User.create(email: 'user2@mail.com', username: 'user2', password: '123456', role: 'guide', first_name: 'user', last_name: 'two', bio: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", avatar: 'https://picsum.photos/50/50')
puts '2 users created'

  file1 = URI.open('https://www.deliciousmagazine.co.uk/wp-content/uploads/2020/06/PastaMaking-Step07.jpg')
  p file1
experience1 = Experience.new(
  title: "Milan cooking experience",
  address: "Piazza Venticinque Aprile, 10",
  description: "Take home more than just a suitcase full of souvenirs and a phone full of travel snaps: this experience gets you a diploma in Italian cooking so you can recreate your favourite dishes wherever you are. Start the morning at the market, where Le Cordon Bleu-trained chef and certified sommelier Clara will help you pick the best local, organic ingredients. Back in her charming kitchen, you’ll cook four different traditional recipes (and get to eat it all at the end too).",
  price: 200,
  duration: 4,
  category: "foodie",
  user: User.last
)
experience1.photos.attach(
  io: file1,
  filename: 'foodimage.png',
  content_type: 'image/png'
)
experience1.save!

  file2 = URI.open('https://cdn.getyourguide.com/img/tour/5cec2fd11a72d.jpeg/145.jpg')
  p file2
experience2 = Experience.new(
  title: "Lake Como tour",
  address: "Piazza Castello, 20121 Milano MI",
  description: "Enjoy a full day at spectacular Lake Como, Italy's famous lakeside resort. Explore the beautiful streets of Como city with your guide. Enjoy a cruise to Bellagio Island on the summer tour and funicular to Brunate on the winter tour.",
  price: 300,
  duration: 10,
  category: "short trip",
  user: User.last
)
experience2.photos.attach(
  io: file2,
  filename: 'foodimage.png',
  content_type: 'image/png'
)
experience2.save!

  file3 = URI.open('https://www.festadilaureamilano.com/wp-content/uploads/2020/07/aperitivo-milano2.jpg')
  p file3
experience3 = Experience.new(
  title: "Aperitivo time",
  address: "P.za del Duomo, 20122 Milano MI",
  description: "Stop to sample wines and cocktails paired with cheeses and charcuterie, gourmet sandwiches, fried cutlets, and other gourmet finger foods and learn about the city’s culinary history from your guide.",
  price: 50,
  duration: 2,
  category: "foodie",
  user: User.last
)
experience3.photos.attach(
  io: file3,
  filename: 'foodimage.png',
  content_type: 'image/png'
)
experience3.save!

  file4 = URI.open('https://www.giorgioalbertazzi.it/wp-content/uploads/2018/04/teatro-alla-scala-milano.jpg')
  p file4
experience4 = Experience.new(
  title: "La Scala with a milanese",
  address: "Via Filodrammatici, 2, 20121 Milano MI",
  description: "La Scala Experience takes you far from the hustle and bustle of everyday life and deep into the history of music. Go back in time to the elegance of high society in the 1800s, when ladies wrapped themselves in fur and gentlemen wore elegant tails for concerts and ballets at one of Italy’s most beautiful theatres.",
  price: 300,
  duration: 2,
  category: "theatre",
  user: User.last
)
experience4.photos.attach(
  io: file4,
  filename: 'foodimage.png',
  content_type: 'image/png'
)
experience4.save!


  file5 = URI.open('https://italialiving.com/wp-content/uploads/2014/06/TruffleExperience1.jpg')
  p file5
experience5 = Experience.new(
  title: "White Truffle hunting",
  address: "Via Spadari, 9, 20123 Milano MI",
  description: "You will be accompanied by experienced truffle hunters and their dogs. At an extra cost, participate in a Private truffle cooking class and/or enjoy a dinner specialty made with truffles from starter to dessert.",
  price: 350,
  duration: 10,
  category: "short trip",
  user: User.last
)
experience5.photos.attach(
  io: file5,
  filename: 'foodimage.png',
  content_type: 'image/png'
)
experience5.save!

  file6 = URI.open('https://i1.wp.com/www.girlinmilan.com/storage/2020/04/Pinacoteca-di-Brera-2.jpg')
  p file6
experience6 = Experience.new(
  title: "Art in Milan",
  address: "Via Brera, 28, 20121 Milano MI",
  description: "Experiencing the cultural attractions of Milan is a great way to go back in history and revel in the old-world charm of ancient buildings and great paintings by Italian and international artists.",
  price: 150,
  duration: 4,
  category: "museums",
  user: User.last
)
experience6.photos.attach(
  io: file6,
  filename: 'foodimage.png',
  content_type: 'image/png'
)
experience6.save!
  #  file = URI.open('https://picsum.photos/200/200')
  # experience = Experience.new(
  #   title: Faker::Verb.base,
  #   address: "Ciutat de balaguer, 25, Barcelona",
  #   # Faker::Address.city,
  #   description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  #   price: rand(1..1500),
  #   duration: rand(1..24),
  #   category: Faker::Coffee.variety,
  #   user: User.first
  # )
  # experience.photos.attach(io: file, filename: 'image.png', content_type: 'image/png')
  # experience.save!
