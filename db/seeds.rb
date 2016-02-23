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


project1 = Project.create(title: "Filville", description: "The happiest place on earth. Always remember in the jungle there’s a lot of they in there, after you overcome they, you will make it to paradise. Egg whites, turkey sausage, wheat toast, water.", goal: 20000, start_date: Time.now, end_date: 7.days.from_now, user_id: 1)
project2 = Project.create(title: "GortPong", description: "Improve office morale with this fun ping pong ladder! Of course they don’t want us to eat our breakfast, so we are going to enjoy our breakfast. Fan luv. Major key, don’t fall for the trap, stay focused.", goal: 30000, start_date: Time.now, end_date: 14.days.from_now, user_id: 1)
project3 = Project.create(title: "Fact Checker", description: "Become more informed. It’s the ones closest to you that want to see you fail. To be successful you’ve got to work hard, to make history, simple, you’ve got to make it.", goal: 100000, start_date: Time.now, end_date: 30.days.from_now, user_id: 2)

# Proj1 Rewards
reward1 = Reward.create(title: "T-Shirt", description: "The best shirt on earth.", amount: 15, project: project1)
reward2 = Reward.create(title: "5 T-Shirts", description: "5 of the best shirts on earth.", amount: 60, project: project1)
reward3 = Reward.create(title: "Meet Fil", description: "The best meeting.", amount: 500, project: project1)

# Proj2 Rewards
reward4 = Reward.create(title: "Gort Keychain", description: "Give thanks to the most high. Stay focused. Put it this way, it took me twenty five years to get these plants, twenty five years of blood sweat and tears, and I’m never giving up, I’m just getting started.", amount: 10, project: project2)
reward5 = Reward.create(title: "Signed Paddle", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex.", amount: 30, project: project2)
reward6 = Reward.create(title: "Meet Gort", description: "Lorem Khaled Ipsum is a major key to success. I told you all this before, when you have a swimming pool, do not use chlorine, use salt water, the healing, salt water is the healing.", amount: 100, project: project2)

# Proj3 Rewards
reward7 = Reward.create(title: "Fact Check Keychain", description: "Lorem Khaled Ipsum is a major key to success. In life you have to take the trash out, if you have trash in your life, take it out, throw it away, get rid of it, major key..", amount: 15, project: project3)
reward8 = Reward.create(title: "Fact Check Lunch", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex.", amount: 30, project: project3)
reward9 = Reward.create(title: "Meet Bernie", description: "Lorem Khaled Ipsum is a major key to success. I told you all this before, when you have a swimming pool, do not use chlorine, use salt water, the healing, salt water is the healing.", amount: 10000, project: project3)


# Proj1 Pledges
pledge1 = Pledge.create(user: user2, reward: reward1)
pledge2 = Pledge.create(user: user2, reward: reward1)
pledge3 = Pledge.create(user: user3, reward: reward3)

# Proj2 Pledges
pledge4 = Pledge.create(user: user3, reward: reward5)
pledge5 = Pledge.create(user: user3, reward: reward5)
pledge6 = Pledge.create(user: user1, reward: reward6)

# Proj3 Pledges
pledge7 = Pledge.create(user: user1, reward: reward7)
pledge8 = Pledge.create(user: user2, reward: reward9)
pledge9 = Pledge.create(user: user3, reward: reward8)
