# frozen_string_literal: true

Appointment.destroy_all
Teacher.destroy_all
Student.destroy_all
House.destroy_all

8.times do
  house = House.create(
    name: Faker::Movies::HarryPotter.unique.house,
    points: Faker::Number.within(range: 10..237)
  )

  number_of_students = rand(10..15)
  number_of_teachers = rand(3..6)

  number_of_students.times do
    house.students
         .build(name: Faker::Movies::HarryPotter.unique.character)
         .save
  end

  number_of_teachers.times do
    house.teachers
         .build(name: Faker::Movies::HarryPotter.unique.character)
         .save
  end
end

rand(10..20).times do
  t = Teacher.order('random()').first
  s = Student.order('random()').first
  scheduled = Faker::Time.forward(days: rand(5..30), period: :morning)
  Appointment.create(teacher: t, student: s, scheduled: scheduled)
end

puts "Generated #{House.count} houses."
puts "Generated #{Student.count} students."
puts "Generated #{Teacher.count} teachers."
puts "Generated #{Appointment.count} appointments."
