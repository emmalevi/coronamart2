# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying current database"
Item.destroy_all
puts "Creating new items"
Item.create!(
  name: 'Great facemask',
  description: 'Amazing facemask to keep you safe',
  picture_url: 'https://images.unsplash.com/photo-1542000551557-3fd0ad0eb15f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=60',
  price: 30,
  user_id: 1
)
Item.create!(
  name: 'Hand sanitizer',
  description: 'Wash your hands to keep you safe!',
  picture_url: 'https://images.unsplash.com/photo-1584483720412-ce931f4aefa8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=60',
  price: 60,
  user_id: 1
)
Item.create!(
  name: 'Full Corona Kit',
  description: 'Make sure to keep your whole family safe and sound with this safety kit',
  picture_url: 'https://images.unsplash.com/photo-1585828292920-638a2a78cb38?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=60',
  price: 60,
  user_id: 1
)


puts "Seed completed!"
