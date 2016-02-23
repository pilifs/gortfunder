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


project1 = Project.create(title: "Filville", description: "The happiest place on earth. Lorem Khaled Ipsum is a major key to success. In life you have to take the trash out, if you have trash in your life, take it out, throw it away, get rid of it, major key. In life you have to take the trash out, if you have trash in your life, take it out, throw it away, get rid of it, major key. Look at the sunset, life is amazing, life is beautiful, life is what you make it. Congratulations, you played yourself. The key is to drink coconut, fresh coconut, trust me. Put it this way, it took me twenty five years to get these plants, twenty five years of blood sweat and tears, and I’m never giving up, I’m just getting started. Find peace, life is like a water fall, you’ve gotta flow. It’s on you how you want to live your life. Everyone has a choice. I pick my choice, squeaky clean. We the best. Eliptical talk. They never said winning was easy. Some people can’t handle success, I can. The key to more success is to get a massage once a week, very important, major key, cloth talk. The weather is amazing, walk with me through the pathway of more success. Take this journey with me, Lion!", goal: 20000, start_date: Time.now, end_date: 7.days.from_now, user_id: 1)
project2 = Project.create(title: "GortPong", description: "Improve office morale with this fun ping pong ladder! Lorem Khaled Ipsum is a major key to success. I’m up to something. The key to more success is to get a massage once a week, very important, major key, cloth talk. We the best. Put it this way, it took me twenty five years to get these plants, twenty five years of blood sweat and tears, and I’m never giving up, I’m just getting started. They key is to have every key, the key to open every door. They never said winning was easy. Some people can’t handle success, I can. Watch your back, but more importantly when you get out the shower, dry your back, it’s a cold world out there. Life is what you make it, so let’s make it. Give thanks to the most high. A major key, never panic. Don’t panic, when it gets crazy and rough, don’t panic, stay calm. Stay focused. The ladies always say Khaled you smell good, I use no cologne. Cocoa butter is the key. The other day the grass was brown, now it’s green because I ain’t give up. Never surrender. It’s important to use cocoa butter. It’s the key to more success, why not live smooth? Why live rough? Let me be clear, you have to make it through the jungle to make it to paradise, that’s the key, Lion!", goal: 30000, start_date: Time.now, end_date: 14.days.from_now, user_id: 1)
project3 = Project.create(title: "Fact Checker", description: "Become more informed. Lorem Khaled Ipsum is a major key to success. Major key, don’t fall for the trap, stay focused. It’s the ones closest to you that want to see you fail. Let me be clear, you have to make it through the jungle to make it to paradise, that’s the key, Lion! The key is to drink coconut, fresh coconut, trust me. The other day the grass was brown, now it’s green because I ain’t give up. Never surrender. You see that bamboo behind me though, you see that bamboo? Ain’t nothin’ like bamboo. Bless up. Fan luv. Every chance I get, I water the plants, Lion! You do know, you do know that they don’t want you to have lunch. I’m keeping it real with you, so what you going do is have lunch. A major key, never panic. Don’t panic, when it gets crazy and rough, don’t panic, stay calm. How’s business? Boomin. You do know, you do know that they don’t want you to have lunch. I’m keeping it real with you, so what you going do is have lunch. Wraith talk. Watch your back, but more importantly when you get out the shower, dry your back, it’s a cold world out there.", goal: 100000, start_date: Time.now, end_date: 30.days.from_now, user_id: 2)

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
