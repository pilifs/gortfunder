# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

50.times do
  pw = Faker::Internet.password
  User.create(
    display_name: Faker::Name.name,
    email:  Faker::Internet.email,
    password: pw,
    password_confirmation: pw)
end

50.times do
  start = Faker::Date.between(Time.now, 30.days.from_now)
  Project.create(
    user: User.all.sample,
    title: Faker::Company.name,
    description: Faker::Lorem.paragraphs(2 + Random.rand(10)).join(""),
    goal: Faker::Number.between(1000, 100000),
    start_date: start,
    end_date: Faker::Date.between(start, start + 60.days)
  )
end

Project.all.each do |project|
  (Random.rand(5) + 1).times do
    Reward.create(
      title: Faker::Lorem.words(Random.rand(2) + 1).join(""),
      description: Faker::Lorem.paragraph,
      amount: 5+ (5 * Random.rand(100) ),
      project: project
    )
  end
end

200.times do
  Pledge.create(
    user: User.all.sample,
    reward: Reward.all.sample
  )
end
