# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

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
  ) #Pas de photo !

  user3 = User.create!(
    first_name: 'Maria',
    last_name: 'Cabrero',
    email: 'maria.cabrero@gmail.com',
    password: 'MariaC',
    address: '8 passage de la Poule Noire, Nantes 44000'
  ) #Pas de photo !

  user4 = User.create!(
    first_name: 'Camille',
    last_name: 'Chadebeau',
    email: 'camille.chadebeau@gmail.com',
    password: 'CamilleC',
    address: '2 rue de la Marne, Nantes 44000'
  ) #Pas de photo !

  user5 = User.create!(
    first_name: 'Sébastien',
    last_name: 'Brun',
    email: 'Sebastien.brun@gmail.com',
    password: 'SebBrun',
    address: '2 avenue Jean Claude Bonduelle, Nantes 44000'
  ) #Pas de photo !

  puts "Creating costumes..."

  piratejack = Costume.create!(
    # photo: 'https://cdn.deguisetoi.fr/images/rep_art/moy_v5/167/8/167801/deguisement-pirate-homme_167801_5.jpg',
    name: 'Déguisement de Pirate',
    price_per_day: 3,
    description: 'Accessoires inclus : Chemise Gilet Pantacourt Bandana Ceinture Sur-bottes. Matière : 100% Polyester. Entretien : Laver à la main.',
    category: 'Pirate',
    size: 'Enfant, adulte-S, adulte-M, adulte-L',
    address: '24 rue Jean Lurcat, Villejuif 94800',
    owner: user1
  )

  mariobros = Costume.create!(
    # photo: 'https://cdn.deguisetoi.fr/images/rep_art/moy_v5/223/9/223933/deguisement-mario-deluxe-adulte_223933_3.jpg',
    name: 'Déguisement de Mario',
    price_per_day: 5,
    description: 'Accessoires inclus : Combinaison Ventre en mousse Casquette Moustache 2 Gants. Matière : 100% PolyesterEntretien : Lavage à la main.',
    category: 'personnage',
    size: 'Enfant, adulte-S, adulte-M, adulte-L',
    address: '24 rue Jean Lurcat, Villejuif 94800',
    owner: user1
  )

  linkzelda = Costume.create!(
    # photo: 'https://cdn.deguisetoi.fr/images/rep_art/moy_v5/333/2/333277/deguisement-link-zelda-classique-adulte_333277_1.jpg](https://cdn.deguisetoi.fr/images/rep_art/moy_v5/333/2/333277/deguisement-link-zelda-classique-adulte_333277_1.jpg)',
    name: 'Déguisement de Link',
    price_per_day: 5,
    description: 'Accessoires inclus : Tunique Ceinture Bonnet. Entretien : Laver à la main',
    category: 'personnage',
    size: 'Enfant, adulte-S, adulte-M, adulte-L',
    address: '24 rue Jean Lurcat, Villejuif 94800',
    owner: user1
  )

  superman = Costume.create!(
    # photo: 'https://cdn.deguisetoi.fr/images/rep_art/moy_v5/171/6/171655/deguisement-superman-homme_171655_2.jpg',
    name: 'Déguisement Superman',
    price_per_day: 8,
    description: 'Accessoires inclus : Combinaison rembourrée avec couvre-bottes Cape Ceinture. Matière : Polyester. Entretien : Laver à la main',
    category: 'personnage',
    size: 'Enfant, adulte-S, adulte-M, adulte-L',
    address: '24 rue Jean Lurcat, Villejuif 94800',
    owner: user1
  )

  piratemarron = Costume.create!(
    # photo: 'https://cdn.deguisetoi.fr/images/rep_art/moy_v5/217/4/217474/deguisement-pirate-marron-femme_217474_7.jpg',
    name: 'Déguisement de pirate - marron',
    price_per_day: 8,
    description: 'Accessoires inclus : Haut Pantalon Baudrier. Matière : 100% Polyester',
    category: 'pirate',
    size: 'adulte-S, adulte-M, adulte-L',
    address: '24 rue Jean Lurcat, Villejuif 94800',
    owner: user1
  )

  piratenoir = Costume.create!(
    # photo: 'https://cdn.deguisetoi.fr/images/rep_art/moy_v5/281/4/281426/sexy-piratess-ladies-costume-xxl-black-bordeaux_281426.jpg',
    name: 'Déguisement de pirate - noir',
    price_per_day: 8,
    description: 'Accessoires inclus : robe corset bandana. Matière : 100% polyester. Entretien : Lavage à la main',
    category: 'pirate',
    size: 'adulte-S',
    address: '24 rue Jean Lurcat, Villejuif 94800',
    owner: user1
  )

  piraterayures = Costume.create!(
    # photo: 'https://cdn.deguisetoi.fr/images/rep_art/moy_v5/225/2/225219/deguisement-pirate-a-rayures-homme_225219.jpg',
    name: 'Déguisement Pirate à rayures',
    price_per_day: 5,
    description: 'Accessoires inclus : Haut Pantacourt 2 manchettes Ceinture Bandeau 2 couvre-bottes. Matière : 100% Polyester. Entretien : A la main',
    category: 'pirate',
    size: 'adulte-M, adulte-L',
    address: '24 rue Jean Lurcat, Villejuif 94800',
    owner: user1
  )

  asterix = Costume.create!(
    # photo: 'https://cdn.deguisetoi.fr/images/rep_art/moy_v5/31…ement-asterix-adulte-asterix-et-obelix_316920.jpg',
    name: 'Déguisement d ‘Asterix',
    price_per_day: 16,
    description: 'Ce costume a pour accessoires **: une tunique (haut et p**antalon), une ceinture gourde et un fourreau. Matière **:** 100% polyester.',
    category: 'personnage',
    size: 'S',
    address: '12 villa de la renaissance, Paris 75019',
    owner: user2
    )

  cow_boy = Costume.create!(
    # photo: 'https://cdn.deguisetoi.fr/images/rep_art/moy_v5/173/5/173586/deguisement-cowboy-homme_173586.jpg',
    name: 'Déguisement de cow-boy',
    price_per_day: 10,
    description: 'Ce costume a pour accessoires un gilet, un sur-pantalon, un bandana et un chapeau de cow-boy. Matière : 100% Polyester.',
    category: 'western',
    size: 'Enfant, adulte-S, adulte-M',
    address: '12 villa de la renaissance, Paris 75019',
    owner: user2
  )

  mere_noel = Costume.create!(
    # photo: 'https://cdn.deguisetoi.fr/images/rep_art/moy_v5/201/7/201772/deguisement-mere-noel-femme_201772.jpg',
    name: 'Déguisement de Mère-Noël',
    price_per_day: 12,
    description: 'Ce costume a pour accessoires : une robe corset et un bonnet de Mère-Noël. Matière : 100% Polyester.',
    category: 'uniforme”, size: “adulte-S, adulte-M',
    address: '12 villa de la renaissance, Paris 75019',
    owner: user2
  )

  enfant_loup = Costume.create!(
    # photo: 'https://cdn.deguisetoi.fr/images/rep_art/moy_v5/309/0/309027/deguisement-loup-garcon_309027.jpg',
    name: 'Déguisement d’enfant-loup',
    price_per_day: 14,
    description: 'Ce costume a pour accessoires **: une** grenouillère, des manchettes, un couvre-pieds et une cagoule. Matière : 100% Polyester',
    category: 'personnage',
    size: 'Enfant”, address: “12 villa de la Renaissance, Paris 75019',
    owner: user2
  )

  prisonnier = Costume.create!(
    # photo:'https://cdn.deguisetoi.fr/images/rep_art/moy_v5/233/1/233179/deguisement-prisonnier-adulte_233179_1.jpg',
    name: 'Déguisement prisonnier',
    price_per_day: 6,
    description: 'Costume prisonnier comprenant la blouse, le pantalon et le badge',
    category: 'uniforme',
    size: 'adulte-S',
    address: '2 rue de la Marne, Nantes 44000',
    owner: user3
  )

  princessezelda = Costume.create!(
    # photo:'https://cdn.deguisetoi.fr/images/rep_art/moy_v5/333/2/333283/deguisement-princesse-zelda-deluxe-femme_333283.jpg](https://cdn.deguisetoi.fr/images/rep_art/moy_v5/333/2/333283/deguisement-princesse-zelda-deluxe-femme_333283.jpg)',
    name: 'Déguisement de princesse Zelda',
    price_per_day: 7,
    description: 'Accessoires inclus :Robe Épaulettes Tablier Tiare. Matière : 100 % polyesterEntretien : Laver à la main',
    category: 'Personnage',
    size: 'adulte-S, adulte-M, adulte-L',
    address: '24 route des coteaux, Divatte sur Loire 44450',
    owner: user3
  )

  pilotedeligne = Costume.create!(
    # photo:'https://cdn.deguisetoi.fr/images/rep_art/moy_v5/172/4/172429/deguisement-pilote-de-ligne-top-gun-homme_172429.jpg',
    name: 'Déguisement de pilote de ligne Top Gun',
    price_per_day: 9,
    description: 'Accessoires inclus : Combinaison Lunettes Blasons. Matière : 100% Polyester. Entretien : A la main',
    category: 'uniforme',
    size: 'adulte-S, adulte-M', address: '24 route des coteaux, Divatte sur Loire 44450',
    owner: user3
  )

  amerindienne = Costume.create!(
    # photo: 'https://cdn.deguisetoi.fr/images/rep_art/moy_v5/20…eguisement-indienne-marron-fonce-femme_204990.jpg',
    name: 'costume d’amérindienne',
    price_per_day: 8,
    description: 'Matière : 100% POLYESTER. Entretien : Lavable à la main',
    category: 'western',
    size: 'adulte-M',
    address: '24 route des coteaux, Divatte sur Loire 44450',
    owner: user3
  )

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

  puts "Creating reservations..."

  reservation1 = Reservation.create!(
    comment: "J'ai besoin d'un costume ce weekend (abolument!!!!!!)",
    status: "Accepted",
    # start_date:,
    # end_date:,
    total_amount: 140,
    costume: superman,
    renter: user4
  )

  reservation2 = Reservation.create!(
    comment: "I'm english and came all the way to France for that Pikachu party, I must get it",
    status: "Pending",
    # start_date:,
    # end_date:,
    total_amount: 140,
    costume: pikachu,
    renter: user4
  )

  reservation3 = Reservation.create!(
    comment: "C'est l'anniversaire de ma femme ce weekend - et j'aime beaucoup la mere Noel",
    status: "Declined",
    # start_date:,
    # end_date:,
    total_amount: 140,
    costume: mere_noel,
    renter: user5
  )

  reservation4 = Reservation.create!(
    comment: "Ma fille a un anniversaire cette semaine et le theme c'est le jeu: Le Loup Garou",
    status: "Pending",
    # start_date:,
    # end_date:,
    total_amount: 140,
    costume: enfant_loup,
    renter: user5
  )

  puts "Seeds completed! Have fun!"
