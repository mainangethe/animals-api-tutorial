Person.destroy_all
Cat.destroy_all

people_count = 25

people_count.times do
  Person.create( { 
    name: Faker::Name.name_with_middle, 
    age: Faker::Number.between(12, 85) })
end
puts "#{ people_count } people created."

people = Person.all
people.each do |person|
  person.cats.create({  
    name: Faker::Creature::Cat.name, 
    breed: Faker::Creature::Cat.breed,
    age: Faker::Number.between(1,15),
    favourite_food: Faker::Food.dish,
    person_id: person.id  })
end
puts "A cat created per person"