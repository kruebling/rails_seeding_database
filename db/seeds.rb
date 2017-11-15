List.destroy_all

50.times do |index|
  List.create!(name: Faker::Food.spice)
end

Task.destroy_all

500.times do |index|
  Task.create!( description: Faker::Food.spice, list_id: Faker::Number.between(1, 50))
end
