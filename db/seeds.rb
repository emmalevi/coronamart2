# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

puts "Destroying current database"
Item.destroy_all
puts "Creating new items"

item1 = Item.create!(
  name: 'Great facemask',
  description: 'Amazing facemask to keep you safe',
  price: 18,
  user_id: 1
)

item1_photo = URI.open('https://images.unsplash.com/photo-1584020961222-f72484ed4d9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
item1.photo.attach(io: item1_photo, filename: 'item1.jpg' , content_type: 'image/jpg')

item2 = Item.create!(
  name: 'Hand sanitizer',
  description: 'Wash your hands to keep you safe!',
  price: 25,
  user_id: 1
)

item2_photo = URI.open('https://images.unsplash.com/photo-1584483720412-ce931f4aefa8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2550&q=80')
item2.photo.attach(io: item2_photo, filename: 'item2.jpg' , content_type: 'image/jpg')

item3 = Item.create!(
  name: 'Full Corona Kit',
  description: 'Make sure to keep your whole family safe and sound with this safety kit',
  price: 200,
  user_id: 1
)

item3_photo = URI.open('https://images.unsplash.com/photo-1583947215259-38e31be8751f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
item3.photo.attach(io: item3_photo, filename: 'item3.jpg' , content_type: 'image/jpg')

item4 = Item.create!(
  name: 'Anti-virus wipes',
  description: 'Clean your hands and any surface you want!',
  price: 100,
  user_id: 1
)

item4_photo = URI.open('https://images.unsplash.com/photo-1583947215160-056c5128fae7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
item4.photo.attach(io: item4_photo, filename: 'item4.jpg' , content_type: 'image/jpg')

item5 = Item.create!(
  name: 'Used infected facemask',
  description: 'In case you wanna be sick',
  price: 12,
  user_id: 1
)

item5_photo = URI.open('https://images.unsplash.com/photo-1582883040775-f98dd8c04597?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
item5.photo.attach(io: item5_photo, filename: 'item5.jpg' , content_type: 'image/jpg')


item6 = Item.create!(
  name: 'Corona home board',
  description: 'Upgrade your home decoration!',
  price: 75,
  user_id: 1
)

item6_photo = URI.open('https://images.unsplash.com/photo-1586074121235-72c31d897625?ixlib=rb-1.2.1&auto=format&fit=crop&w=1349&q=80')
item6.photo.attach(io: item6_photo, filename: 'item6.jpg' , content_type: 'image/jpg')



puts "Seed completed!"
