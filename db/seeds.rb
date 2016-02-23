# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create(display_name: "Filip", email: "filips@gmail.com", password: "filip", password_confirmation: "filip")
user2 = User.create(display_name: "Chris", email: "cstaikos@gmail.com", password: "chris", password_confirmation: "chris")
user3 = User.create(display_name: "Bliss", email: "blissman@gmail.com", password: "bliss", password_confirmation: "bliss")


project1 = Project.create(title: "Filville", description: "The happiest place on earth.", goal: 20000, start_date: Time.now, end_date: 7.days.from_now, user_id: 1)

reward1 = Reward.create(title: "T-Shirt", description: "The best shirt on earth.", amount: 15, project: project1)
reward2 = Reward.create(title: "5 T-Shirts", description: "5 of the best shirts on earth.", amount: 60, project: project1)
reward3 = Reward.create(title: "Meet Fil", description: "The best meeting.", amount: 500, project: project1)

pledge1 = Pledge.create(user: user2, reward: reward1)
pledge2 = Pledge.create(user: user2, reward: reward1)
pledge3 = Pledge.create(user: user3, reward: reward3)
