# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

puts "Destroying existing seeds"

Reservation.destroy_all
Costume.destroy_all
User.destroy_all

puts "Creating users..."

user1 = User.create!(
  first_name: 'Jean',
  last_name: 'Dupont',
  email: 'jean.dupont@gmail.com',
  password: 'JeanDu',
  address: '24 rue Jean Lurcat, Villejuif 94800'
)

user2 = User.create!(
  first_name: 'Julien',
  last_name: 'Bardy',
  email: 'julien.bardy@gmail.com',
  password: 'JulienB',
  address: '9 avenue d’Italie, Paris 75013'
)

user3 = User.create!(
  first_name: 'Maria',
  last_name: 'Cabrero',
  email: 'maria.cabrero@gmail.com',
  password: 'MariaC',
  address: '8 passage de la Poule Noire, Nantes 44000'
)

user4 = User.create!(
  first_name: 'Camille',
  last_name: 'Chadebeau',
  email: 'camille.chadebeau@gmail.com',
  password: 'CamilleC',
  address: '2 rue de la Marne, Nantes 44000'
)

user5 = User.create!(
  first_name: 'Sébastien',
  last_name: 'Brun',
  email: 'Sebastien.brun@gmail.com',
  password: 'SebBrun',
  address: '2 avenue Jean Claude Bonduelle, Nantes 44000'
  )

puts "Creating costumes..."

piratejack = Costume.create!(
  name: 'Pirate',
  price_per_day: 14,
  description: "Ce déguisement est constitué d'une chemise, d'un gilet, d'un pantacourt, d'un bandana et de sur-bottes",
  category: 'Pirate',
  size: 'adulte-L',
  address: '24 rue Jean Lurcat, Villejuif 94800',
  owner: user1
)

file = URI.open("https://cdn.deguisetoi.fr/images/rep_art/moy_v5/167/8/167801/deguisement-pirate-homme_167801_5.jpg")
piratejack.photo.attach(io: file, filename: "costume-1.png", content_type: "image/png")
piratejack.save

mariobros = Costume.create!(
  name: 'Mario',
  price_per_day: 15,
  description: "Ce déguisement se compose d'une combinaison en mousse, d'une casquette, d'une moustache et d'une paire de gants blancs",
  category: 'personnage',
  size: 'adulte-M',
  address: '24 rue Jean Lurcat, Villejuif 94800',
  owner: user1
)

file = URI.open("https://cdn.deguisetoi.fr/images/rep_art/moy_v5/223/9/223933/deguisement-mario-deluxe-adulte_223933_3.jpg")
mariobros.photo.attach(io: file, filename: "costume-1.png", content_type: "image/png")
mariobros.save

linkzelda = Costume.create!(
  name: 'Link',
  price_per_day: 14,
  description: 'Ce déguisement comprend une tunique, une teinture et un bonnet',
  category: 'personnage',
  size: 'adulte-S',
  address: '24 rue Jean Lurcat, Villejuif 94800',
  owner: user1
)

file = URI.open("https://static1.funidelia.com/39084-f6_big2/deguisement-link-the-legend-of-zelda-deluxe-adulte.jpg")
linkzelda.photo.attach(io: file, filename: "costume-1.png", content_type: "image/png")
linkzelda.save

superman = Costume.create!(
  name: 'Superman',
  price_per_day: 15,
  description: "Retrouvez dans ce déguisement une combinaison rembourrée avec ceinture et couvre-bottes, ainsi qu'une cape",
  category: 'personnage',
  size: 'adulte-S',
  address: '24 rue Jean Lurcat, Villejuif 94800',
  owner: user1
)

file = URI.open("https://cdn.deguisetoi.fr/images/rep_art/moy_v5/171/6/171655/deguisement-superman-homme_171655_2.jpg")
superman.photo.attach(io: file, filename: "costume-1.png", content_type: "image/png")
superman.save

piratemarron = Costume.create!(
  name: 'Femme Pirate - marron',
  price_per_day: 14,
  description: "Retrouvez dans ce déguisement un chapeau ainsi qu'un pantalon et un baudrier",
  category: 'pirate',
  size: 'adulte-S',
  address: '24 rue Jean Lurcat, Villejuif 94800',
  owner: user1
)

file = URI.open("https://cdn.deguisetoi.fr/images/rep_art/moy_v5/217/4/217474/deguisement-pirate-marron-femme_217474_7.jpg")
piratemarron.photo.attach(io: file, filename: "costume-1.png", content_type: "image/png")
piratemarron.save

piratenoir = Costume.create!(
  name: 'Femme Pirate - noir',
  price_per_day: 14,
  description: 'Ce déguisemnt comprend une robe-corset et un bandana.',
  category: 'pirate',
  size: 'adulte-L',
  address: '24 rue Jean Lurcat, Villejuif 94800',
  owner: user1
)

file = URI.open("https://cdn.deguisetoi.fr/images/rep_art/moy_v5/281/4/281426/sexy-piratess-ladies-costume-xxl-black-bordeaux_281426.jpg")
piratenoir.photo.attach(io: file, filename: "costume-1.png", content_type: "image/png")
piratenoir.save

piraterayures = Costume.create!(
  name: 'Pirate',
  price_per_day: 15,
  description: 'Retrouvez dans ce déguisement une chemise et un gilet, un pantacourt, un bandeau, des manchettes et 2 couvre-bottes.',
  category: 'pirate',
  size: 'adulte-M',
  address: '24 rue Jean Lurcat, Villejuif 94800',
  owner: user1
)

file = URI.open("https://cdn.deguisetoi.fr/images/rep_art/moy_v5/225/2/225219/deguisement-pirate-a-rayures-homme_225219.jpg")
piraterayures.photo.attach(io: file, filename: "costume-1.png", content_type: "image/png")
piraterayures.save

asterix = Costume.create!(
  name: 'Asterix',
  price_per_day: 16,
  description: "Ce déguisement est composé d'une tunique et d'un pantalon avec une ceinture, ainsi qu'une gourde et un fourreau.",
  category: 'personnage',
  size: 'adulte-S',
  address: '12 villa de la renaissance, Paris 75019',
  owner: user2
  )

file = URI.open("https://www.ambiance-unic.fr/3069-tm_large_default/deguisement-asterix.jpg")
asterix.photo.attach(io: file, filename: "costume-1.png", content_type: "image/png")
asterix.save

cow_boy = Costume.create!(
  name: 'Cow-Boy',
  price_per_day: 15,
  description: "Ce déguisement se compose d'un gilet, un sur-pantalon, un bandana et un chapeau de cow-boy.",
  category: 'western',
  size: 'adulte-M',
  address: '12 villa de la renaissance, Paris 75019',
  owner: user2
)

file = URI.open("https://cdn.deguisetoi.fr/images/rep_art/moy_v5/173/5/173586/deguisement-cowboy-homme_173586.jpg")
cow_boy.photo.attach(io: file, filename: "costume-1.png", content_type: "image/png")
cow_boy.save

mere_noel = Costume.create!(
  name: 'Mère-Noël',
  price_per_day: 12,
  description: 'Ce déguisement comprend une robe-corset et un bonnet de Mère-Noël.',
  category: 'uniforme',
  size: 'adulte-S',
  address: '12 villa de la renaissance, Paris 75019',
  owner: user2
)

file = URI.open("https://cdn.deguisetoi.fr/images/rep_art/moy_v5/201/7/201772/deguisement-mere-noel-femme_201772.jpg")
mere_noel.photo.attach(io: file, filename: "costume-1.png", content_type: "image/png")
mere_noel.save

enfant_loup = Costume.create!(
  name: 'Enfant-Loup',
  price_per_day: 9,
  description: 'Ce déguisement comprend une grenouillère, des manchettes, un couvre-pieds et une cagoule',
  category: 'personnage',
  size: 'Enfant',
  address: '12 villa de la Renaissance, Paris 75019',
  owner: user2
)

file = URI.open("https://cdn.deguisetoi.fr/images/rep_art/moy_v5/309/0/309027/deguisement-loup-garcon_309027.jpg")
enfant_loup.photo.attach(io: file, filename: "costume-1.png", content_type: "image/png")
enfant_loup.save

prisonnier = Costume.create!(
  name: 'Prisonnière',
  price_per_day: 13,
  description: 'Ce déguisemnt inclut une blouse avec un badge et un pantalon assorti',
  category: 'uniforme',
  size: 'adulte-S',
  address: '2 rue de la Marne, Nantes 44000',
  owner: user3
)

file = URI.open("https://cdn.deguisetoi.fr/images/rep_art/moy_v5/233/1/233179/deguisement-prisonnier-adulte_233179_1.jpg")
prisonnier.photo.attach(io: file, filename: "costume-1.png", content_type: "image/png")
prisonnier.save

princessezelda = Costume.create!(
  # photo:')',
  name: 'Princesse Zelda',
  price_per_day: 9,
  description: 'Ce déguisement inclut une robe à épaulettes, un tablier et une tiare',
  category: 'Personnage',
  size: 'Enfant',
  address: '24 route des coteaux, Divatte sur Loire 44450',
  owner: user3
)

file = URI.open("https://imaginaire.com/fr/images/THE-LEGEND-OF-ZELDA-COSTUME-DE-ZELDA-DELUXE-ADULTE__DI98796-Z.JPG")
princessezelda.photo.attach(io: file, filename: "costume-1.png", content_type: "image/png")
princessezelda.save

pilotedeligne = Costume.create!(
  name: 'Pilote - Top Gun',
  price_per_day: 14,
  description: "Ce déguisement est composé d'une combinaison à blasons et d'une paire de lunettes de soleil",
  category: 'uniforme',
  size: 'adulte-M', address: '24 route des coteaux, Divatte sur Loire 44450',
  owner: user3
)

file = URI.open("https://cdn.deguisetoi.fr/images/rep_art/moy_v5/172/4/172429/deguisement-pilote-de-ligne-top-gun-homme_172429.jpg")
pilotedeligne.photo.attach(io: file, filename: "costume-1.png", content_type: "image/png")
pilotedeligne.save

amerindienne = Costume.create!(
  name: 'Amérindienne',
  price_per_day: 13,
  description: "Ce déguisement se compose d'une jupe à franges, d'un collier et d'une perruque à tresses",
  category: 'western',
  size: 'adulte-M',
  address: '24 route des coteaux, Divatte sur Loire 44450',
  owner: user3
)

file = URI.open("https://www.coti-jouets.fr/12197-large_default/deguisement-indienne-fleur-des-prairies-taille-s.jpg")
amerindienne.photo.attach(io: file, filename: "costume-1.png", content_type: "image/png")
amerindienne.save

pikachu = Costume.create!(
  # photo: 'https://cdn.deguisetoi.fr/images/rep_art/moy_v5/32…isement-bonhomme-jaune-electrique-bebe_328015.jpg',
  name: 'Pikachu',
  price_per_day: 9,
  description: "Ce déguisement est composé d'une simple combinaison à queue",
  category: 'personnage',
  size: 'Enfant',
  address: '24 route des coteaux, Divatte sur Loire 44450',
  owner: user3
)

file = URI.open("https://www.feter-recevoir.com/upload/image/deguisement-pikachu-bebe-p-image-178360-grande.jpg")
pikachu.photo.attach(io: file, filename: "costume-1.png", content_type: "image/png")
pikachu.save

puts "Creating reservations..."

reservation1 = Reservation.create!(
  comment: "J'ai besoin d'un costume ce weekend (abolument!!!!!!)",
  status: "Accepted",
  start_date: "2022-08-19",
  end_date: "2022-08-22",
  total_amount: 140,
  costume: superman,
  renter: user4
)

reservation2 = Reservation.create!(
  comment: "I'm english and came all the way to France for that Pikachu party, I must get it",
  status: "Pending",
  start_date: "2022-08-26",
  end_date: "2022-08-29",
  total_amount: 140,
  costume: pikachu,
  renter: user4
)

reservation3 = Reservation.create!(
  comment: "C'est l'anniversaire de ma femme ce weekend - et j'aime beaucoup la mere Noel",
  status: "Declined",
  start_date: "2022-08-26",
  end_date: "2022-08-29",
  total_amount: 140,
  costume: mere_noel,
  renter: user5
)

reservation4 = Reservation.create!(
  comment: "Ma fille a un anniversaire cette semaine et le theme c'est le jeu: Le Loup Garou",
  status: "Pending",
  start_date: "2022-08-23",
  end_date: "2022-08-26",
  total_amount: 140,
  costume: enfant_loup,
  renter: user5
)

puts "Seeds completed! Have fun!"
