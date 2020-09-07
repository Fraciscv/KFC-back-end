# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# seed data ###################################
User.destroy_all
Event.destroy_all
# USERS
fran = User.create({name: "Fran", birthdate: "02-02-1993"})
barbs = User.create({name: "Barbs", birthdate: "03-03-1994"})
nutz = User.create({name: "Nutella", birthdate: "04-04-1995"})

# EVENTS
e1 = Event.create({content: "1. Tetris was released... ", conceptionDate: "05-12-1992"})
e2 = Event.create({content: "1. Tetris was released... ", conceptionDate: "05-12-1993"})
e3 = Event.create({content: "1. Tetris was released... ", conceptionDate: "05-12-1994"})
e4 = Event.create({content: "1. Tetris was released... ", conceptionDate: "05-12-1995"})


# COMMENTS
c1 = Comment.create({content: "Crazy Kool", user_id: User.all.sample.id, event_id: Event.all.sample.id})
c2 = Comment.create({content: "Crazy LALALAL", user_id: User.all.sample.id, event_id: Event.all.sample.id})
c3 = Comment.create({content: "Crazy LOLOLOL", user_id: User.all.sample.id, event_id: Event.all.sample.id})


