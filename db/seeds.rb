# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

House.destroy_all
Character.destroy_all

lannister = House.create({
  name: 'House Lannister',
  sigil: 'Lion',
  motto: 'Hear Me Roar',
  location: 'Casterly Rock',
  banner_img: ''
})

stark = House.create({
  name: 'House Stark',
  sigil: 'Direwolf',
  motto: 'Winter Is Coming',
  location: 'Winterfell',
  banner_img: ''
})

snow = stark.characters.create({
  name: 'Jon Snow',
  title: 'The Bastard',
  quote: 'You know nothing'
})

tyrion = lannister.characters.create({
  name: 'Tyrion',
  title: 'The Dwarf',
  quote: 'Loving sister, schemes and plots are the same thing'
})

arya = stark.characters.create({
  name: 'Arya',
  title: 'Not A Boy!',
  quote: 'Cersei, the Hound, the Mountain, Joffrey...'
})
