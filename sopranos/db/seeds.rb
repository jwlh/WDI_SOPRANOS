# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Suspect.destroy_all
Question.destroy_all
Character.destroy_all

Character.create(name: 'Luke', img: 'http://www.fillmurray.com/300/300')
Character.create(name: 'Harry', img: 'http://www.fillmurray.com/300/300')

Question.create(description: 'test', victim_id: 1, killer_id: 2, video: 'test')

Suspect.create(question_id: 1, character_id: 2)
