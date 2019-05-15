Person.destroy_all

people_count = 25

people_count.times do
  Person.create( { name: Faker::Name.name_with_middle, age: Faker::Number.between(12, 85) })
end
puts "#{ people_count } people created."