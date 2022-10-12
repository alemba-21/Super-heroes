# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

puts "Start Seeding Heroes here ..."
Hero.create!(
  [
    {
      name: "Peter Parker",
      super_name: "Spider-Man",
    },

    {
      name: "Steve Rogers",
      super_name: "Captain America",
    },

    {
      name: "Bruce Banner",
      super_name: "Hulk",
    },

    {
      name: "Natasha Romanoff",
      super_name: "Black Widow",
    },

    {
      name: "Matthew Murdock",
      super_name: "Dare Devil",
    },

    {
      name: "Reed Richards",
      super_name: "Mr.Fantastic",
    },

    {
      name: "T'Challa",
      super_name: "Black Panther",
    },

    {
      name: "Thor Odinson",
      super_name: "Thor",
    },
    {
      name: "Tony Stark",
      super_name: "Iron Man",
    },

    {
      name: "Carol Danvers",
      super_name: "Captain Marvel",
    },
  ]
)

Power.create!(
  [
    {
      name: "super strength: ",
      description: "gives the wielder super human strengths",
    },

    {
      name: "flight : ",
      description: "gives the wielder the ability to fly through the skys at supersonic speed",
    },

    {
      name: "super human senses: ",
      description: "allows the person to user their senses at super human level",
    },

    {
      name: "elasticity: ",
      description: "can stretch the human body to extreme lengths",
    },
  ]
)

Hero.all.each do |hero|
  rand(1..3).times do
    # get a random power
    power = Power.find(Power.pluck(:id).sample)

    HeroPower.create!(hero_id: hero.id, power_id: power.id, strength: [:Strong, :Weak, :Average].sample)
  end
end

puts "End of Seeding...."

#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
