# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: 'user1@mail.com', username: 'user1', password: '123456', role: 'user', first_name: 'user', last_name: 'one', bio: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", avatar: 'https://picsum.photos/50/50')
User.create(email: 'user2@mail.com', username: 'user2', password: '123456', role: 'guide', first_name: 'user', last_name: 'two', bio: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", avatar: 'https://picsum.photos/50/50')

5.times do
  file = URI.open('https://picsum.photos/200/200')
  experience = Experience.new(
    title: Faker::Verb.base,
    location: Faker::Address.city,
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    price: rand(1..1500),
    duration: rand(1..24),
    category: Faker::Coffee.variety,
    user: User.first
  )
  experience.photos.attach(io: file, filename: 'image.png', content_type: 'image/png')
  experience.save!
end
