# frozen_string_literal: true

Student.destroy_all
House.destroy_all

8.times do
  house = House.create(
    name: Faker::Movies::HarryPotter.unique.house,
    points: Faker::Number.within(range: 10..237)
  )
  12.times do
    house.students
         .build(name: Faker::Movies::HarryPotter.unique.character)
         .save
  end
end

puts "Generated #{House.count} houses."
puts "Generated #{Student.count} students."
