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
  name: 'Déguisement de Pirate',
  price_per_day: 3,
  description: 'Accessoires inclus : Chemise Gilet Pantacourt Bandana Ceinture Sur-bottes. Matière : 100% Polyester. Entretien : Laver à la main.',
  category: 'Pirate',
  size: 'Enfant, adulte-S, adulte-M, adulte-L',
  address: '24 rue Jean Lurcat, Villejuif 94800',
  owner: user1
)

file = URI.open("https://cdn.deguisetoi.fr/images/rep_art/moy_v5/167/8/167801/deguisement-pirate-homme_167801_5.jpg")
piratejack.photo.attach(io: file, filename: "costume-1.png", content_type: "image/png")
piratejack.save

mariobros = Costume.create!(
  name: 'Déguisement de Mario',
  price_per_day: 5,
  description: 'Accessoires inclus : Combinaison Ventre en mousse Casquette Moustache 2 Gants. Matière : 100% PolyesterEntretien : Lavage à la main.',
  category: 'personnage',
  size: 'Enfant, adulte-S, adulte-M, adulte-L',
  address: '24 rue Jean Lurcat, Villejuif 94800',
  owner: user1
)

file = URI.open("https://cdn.deguisetoi.fr/images/rep_art/moy_v5/223/9/223933/deguisement-mario-deluxe-adulte_223933_3.jpg")
mariobros.photo.attach(io: file, filename: "costume-1.png", content_type: "image/png")
mariobros.save

linkzelda = Costume.create!(
  name: 'Déguisement de Link',
  price_per_day: 5,
  description: 'Accessoires inclus : Tunique Ceinture Bonnet. Entretien : Laver à la main',
  category: 'personnage',
  size: 'Enfant, adulte-S, adulte-M, adulte-L',
  address: '24 rue Jean Lurcat, Villejuif 94800',
  owner: user1
)

file = URI.open("https://www.deguisetoi.fr/p-333277-deguisement-link-zelda-classique-adulte.html?type=product&_gl=1*6psmpj*_up*MQ..&gclid=Cj0KCQjw9ZGYBhCEARIsAEUXITU3FmLMtp8snFISg-dM9tfuzb8RyYDlZYSt_d1SNoWsr1JcS4H5BiQaAno-EALw_wcB")
linkzelda.photo.attach(io: file, filename: "costume-1.png", content_type: "image/png")
linkzelda.save

superman = Costume.create!(
  name: 'Déguisement Superman',
  price_per_day: 8,
  description: 'Accessoires inclus : Combinaison rembourrée avec couvre-bottes Cape Ceinture. Matière : Polyester. Entretien : Laver à la main',
  category: 'personnage',
  size: 'Enfant, adulte-S, adulte-M, adulte-L',
  address: '24 rue Jean Lurcat, Villejuif 94800',
  owner: user1
)

file = URI.open("https://cdn.deguisetoi.fr/images/rep_art/moy_v5/171/6/171655/deguisement-superman-homme_171655_2.jpg")
superman.photo.attach(io: file, filename: "costume-1.png", content_type: "image/png")
superman.save

piratemarron = Costume.create!(
  name: 'Déguisement de pirate - marron',
  price_per_day: 8,
  description: 'Accessoires inclus : Haut Pantalon Baudrier. Matière : 100% Polyester',
  category: 'pirate',
  size: 'adulte-S, adulte-M, adulte-L',
  address: '24 rue Jean Lurcat, Villejuif 94800',
  owner: user1
)

file = URI.open("https://cdn.deguisetoi.fr/images/rep_art/moy_v5/217/4/217474/deguisement-pirate-marron-femme_217474_7.jpg")
piratemarron.photo.attach(io: file, filename: "costume-1.png", content_type: "image/png")
piratemarron.save

piratenoir = Costume.create!(
  name: 'Déguisement de pirate - noir',
  price_per_day: 8,
  description: 'Accessoires inclus : robe corset bandana. Matière : 100% polyester. Entretien : Lavage à la main',
  category: 'pirate',
  size: 'adulte-S',
  address: '24 rue Jean Lurcat, Villejuif 94800',
  owner: user1
)

file = URI.open("https://cdn.deguisetoi.fr/images/rep_art/moy_v5/281/4/281426/sexy-piratess-ladies-costume-xxl-black-bordeaux_281426.jpg")
piratenoir.photo.attach(io: file, filename: "costume-1.png", content_type: "image/png")
piratenoir.save

piraterayures = Costume.create!(
  name: 'Déguisement Pirate à rayures',
  price_per_day: 5,
  description: 'Accessoires inclus : Haut Pantacourt 2 manchettes Ceinture Bandeau 2 couvre-bottes. Matière : 100% Polyester. Entretien : A la main',
  category: 'pirate',
  size: 'adulte-M, adulte-L',
  address: '24 rue Jean Lurcat, Villejuif 94800',
  owner: user1
)

file = URI.open("https://cdn.deguisetoi.fr/images/rep_art/moy_v5/225/2/225219/deguisement-pirate-a-rayures-homme_225219.jpg")
piraterayures.photo.attach(io: file, filename: "costume-1.png", content_type: "image/png")
piraterayures.save

asterix = Costume.create!(
  name: 'Déguisement d ‘Asterix',
  price_per_day: 16,
  description: 'Ce costume a pour accessoires **: une tunique (haut et p**antalon), une ceinture gourde et un fourreau. Matière **:** 100% polyester.',
  category: 'personnage',
  size: 'S',
  address: '12 villa de la renaissance, Paris 75019',
  owner: user2
  )

file = URI.open("https://www.deguisetoi.fr/p-316920-deguisement-asterix-trade-adulte.html?type=product")
asterix.photo.attach(io: file, filename: "costume-1.png", content_type: "image/png")
asterix.save

cow_boy = Costume.create!(
  name: 'Déguisement de cow-boy',
  price_per_day: 10,
  description: 'Ce costume a pour accessoires un gilet, un sur-pantalon, un bandana et un chapeau de cow-boy. Matière : 100% Polyester.',
  category: 'western',
  size: 'Enfant, adulte-S, adulte-M',
  address: '12 villa de la renaissance, Paris 75019',
  owner: user2
)

file = URI.open("https://cdn.deguisetoi.fr/images/rep_art/moy_v5/173/5/173586/deguisement-cowboy-homme_173586.jpg")
cow_boy.photo.attach(io: file, filename: "costume-1.png", content_type: "image/png")
cow_boy.save

mere_noel = Costume.create!(
  name: 'Déguisement de Mère-Noël',
  price_per_day: 12,
  description: 'Ce costume a pour accessoires : une robe corset et un bonnet de Mère-Noël. Matière : 100% Polyester.',
  category: 'uniforme”, size: “adulte-S, adulte-M',
  address: '12 villa de la renaissance, Paris 75019',
  owner: user2
)

file = URI.open("https://cdn.deguisetoi.fr/images/rep_art/moy_v5/201/7/201772/deguisement-mere-noel-femme_201772.jpg")
mere_noel.photo.attach(io: file, filename: "costume-1.png", content_type: "image/png")
mere_noel.save

enfant_loup = Costume.create!(
  name: 'Déguisement d’enfant-loup',
  price_per_day: 14,
  description: 'Ce costume a pour accessoires **: une** grenouillère, des manchettes, un couvre-pieds et une cagoule. Matière : 100% Polyester',
  category: 'personnage',
  size: 'Enfant',
  address: '12 villa de la Renaissance, Paris 75019',
  owner: user2
)

file = URI.open("https://cdn.deguisetoi.fr/images/rep_art/moy_v5/309/0/309027/deguisement-loup-garcon_309027.jpg")
enfant_loup.photo.attach(io: file, filename: "costume-1.png", content_type: "image/png")
enfant_loup.save

prisonnier = Costume.create!(
  name: 'Déguisement prisonnier',
  price_per_day: 6,
  description: 'Costume prisonnier comprenant la blouse, le pantalon et le badge',
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
  name: 'Déguisement de princesse Zelda',
  price_per_day: 7,
  description: 'Accessoires inclus :Robe Épaulettes Tablier Tiare. Matière : 100 % polyesterEntretien : Laver à la main',
  category: 'Personnage',
  size: 'adulte-S, adulte-M, adulte-L',
  address: '24 route des coteaux, Divatte sur Loire 44450',
  owner: user3
)

file = URI.open("https://www.deguisetoi.fr/p-333283-deguisement-princesse-zelda-deluxe-femme.html?type=product")
princessezelda.photo.attach(io: file, filename: "costume-1.png", content_type: "image/png")
princessezelda.save

pilotedeligne = Costume.create!(
  name: 'Déguisement de pilote de ligne Top Gun',
  price_per_day: 9,
  description: 'Accessoires inclus : Combinaison Lunettes Blasons. Matière : 100% Polyester. Entretien : A la main',
  category: 'uniforme',
  size: 'adulte-S, adulte-M', address: '24 route des coteaux, Divatte sur Loire 44450',
  owner: user3
)

file = URI.open("https://cdn.deguisetoi.fr/images/rep_art/moy_v5/172/4/172429/deguisement-pilote-de-ligne-top-gun-homme_172429.jpg")
pilotedeligne.photo.attach(io: file, filename: "costume-1.png", content_type: "image/png")
pilotedeligne.save

amerindienne = Costume.create!(
  name: 'costume d’amérindienne',
  price_per_day: 8,
  description: 'Matière : 100% POLYESTER. Entretien : Lavable à la main',
  category: 'western',
  size: 'adulte-M',
  address: '24 route des coteaux, Divatte sur Loire 44450',
  owner: user3
)

file = URI.open("https://www.deguisetoi.fr/p-233196-deguisement-indienne-femme.html?type=product")
amerindienne.photo.attach(io: file, filename: "costume-1.png", content_type: "image/png")
amerindienne.save

pikachu = Costume.create!(
  # photo: 'https://cdn.deguisetoi.fr/images/rep_art/moy_v5/32…isement-bonhomme-jaune-electrique-bebe_328015.jpg',
  name: 'costume de pikachu',
  price_per_day: 12,
  description: 'Accessoires inclus : Combinaison Queue. Matière : 100% Polyester. Entretien : Laver à la main',
  category: 'personnage',
  size: 'Enfant',
  address: '24 route des coteaux, Divatte sur Loire 44450',
  owner: user3
)

file = URI.open("https://www.deguisetoi.fr/p-328015-deguisement-bonhomme-jaune-electrique-bebe.html?type=product")
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
