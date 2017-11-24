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

Character.create(name: 'Tony Soprano', img: 'https://upload.wikimedia.org/wikipedia/en/c/c2/Tony_Soprano.jpg')
Character.create(name: 'Christopher Moltisanti', img: 'https://a1cf74336522e87f135f-2f21ace9a6cf0052456644b80fa06d4f.ssl.cf2.rackcdn.com/images/characters/p-the-sopranos-michael-imperioli.jpg')
Character.create(name: 'Adriana La Cerva', img: 'https://i.pinimg.com/236x/da/4d/50/da4d50adbb14ce0ef5495ef1ec24290a--adriana-la-cerva-organizations.jpg')
Character.create(name: 'Emil Kolar', img: 'https://i.imgur.com/i5FxBz7.jpg')
Character.create(name: 'Janice Soprano', img: 'https://i.imgur.com/tPYFEVt.jpg')
Character.create(name: 'Vito Spatafore', img: 'https://vignette.wikia.nocookie.net/sopranos/images/8/8a/Vito_Spatafore.jpg/revision/latest?cb=20160925012214')
Character.create(name: 'Jackie "Junior" Aprile', img: 'https://i.imgur.com/Ci4Y2z2.jpg')
Character.create(name: 'Richie Aprile', img: 'https://hbo.co.uk/uploads/images/the-sopranos/cast/richie-aprile.jpg')
Character.create(name: 'Salvatore "Big Pussy" Bonpensiero', img: 'https://i.imgur.com/82j2D9D.jpg')
Character.create(name: 'Bobby Baccalieri Sr', img: 'https://i.imgur.com/pnagYNi.png')
Character.create(name: 'Bobby Baccalieri', img: 'https://upload.wikimedia.org/wikipedia/en/c/ce/BobbyBaccalieri.jpg')
Character.create(name: 'Silvio Dante', img: 'https://a1cf74336522e87f135f-2f21ace9a6cf0052456644b80fa06d4f.ssl.cf2.rackcdn.com/images/characters/p-the-sopranos-steven-van-zandt.jpg')
Character.create(name: 'Paulie "Walnuts" Gaultieri', img: 'https://pbs.twimg.com/profile_images/3086685391/d8e24368016bc8db126a682076e856f5_400x400.jpeg')
Character.create(name: 'Tony Blundetto', img: 'https://a1cf74336522e87f135f-2f21ace9a6cf0052456644b80fa06d4f.ssl.cf2.rackcdn.com/images/characters/p-the-sopranos-steve-busemi.jpg')

Question.create(description: 'Gunshot wound to the back of the head while snorting a line of cocaine at Satriale\'s Deli.', victim_id: 4, killer_id: 2, video: 'KA4t-lkoBko')
Question.create(description: 'Multiple gunshot wounds (location unknown). Killed for being an FBI informant.', victim_id: 3, killer_id: 12, video: 'Bm03vt8tkdc')
Question.create(description: 'Suffocated after suffering massive trauma brought on by a car accident.', victim_id: 2, killer_id: 1, video: 'wl04fL6A368')
Question.create(description: 'Gunshot wound to the back of the head. Killed because of the poker robbery he attempted with Dino and Carlo.', victim_id: 7, killer_id: 6, video: 'fc5QWxQ_leI')
Question.create(description: 'Gunshot wound to the chest; gunshot wound to the forehead.', victim_id: 8, killer_id: 5, video: '3X6AaNbZZfQ')

Suspect.create(question_id: 1, character_id: 13)
Suspect.create(question_id: 1, character_id: 2)
Suspect.create(question_id: 1, character_id: 7)
Suspect.create(question_id: 1, character_id: 6)
Suspect.create(question_id: 2, character_id: 12)
Suspect.create(question_id: 2, character_id: 1)
Suspect.create(question_id: 2, character_id: 2)
Suspect.create(question_id: 2, character_id: 11)
Suspect.create(question_id: 3, character_id: 14)
Suspect.create(question_id: 3, character_id: 3)
Suspect.create(question_id: 3, character_id: 13)
Suspect.create(question_id: 3, character_id: 1)
Suspect.create(question_id: 4, character_id: 13)
Suspect.create(question_id: 4, character_id: 8)
Suspect.create(question_id: 4, character_id: 6)
Suspect.create(question_id: 4, character_id: 1)
Suspect.create(question_id: 5, character_id: 9)
Suspect.create(question_id: 5, character_id: 2)
Suspect.create(question_id: 5, character_id: 1)
Suspect.create(question_id: 5, character_id: 5)
