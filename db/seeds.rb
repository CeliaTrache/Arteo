# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.delete_all
ArtPiece.delete_all
User.delete_all

user = User.create(email: "cindygrenet@hotmail.fr", password: "123456", first_name: "Cindy", last_name: "Grenet")

nuit_etoilee = ArtPiece.create(title: 'La nuit étoilée', artist: 'Van Gogh', unit_price: 900, description: "La Nuit étoilée est une peinture de l'artiste peintre postimpressionniste néerlandais Vincent van Gogh.", size: "74 cm x 92 cm", picture: "https://zeuxis-art.com//img/cms/Il%20etait%20une%20fois/la_nuit_etoilee.jpg", user: user, category: "Impressionnistic", painting_technic: "Peinture à l'huile")

joconde = ArtPiece.create(title: 'La Joconde', artist: 'Leonard de Vinci', unit_price: 1300, description: "La Joconde, ou Portrait de Mona Lisa, est un tableau de l'artiste Léonard de Vinci, réalisé entre 1503 et 1506.", size: "77 cm x 53 cm", picture: "https://www.ixxiyourworld.com/media/2387797/mona-lisa.jpg?mode=crop&width=562&height=838", user: user, category: "Classicism", painting_technic: "Peinture à l'huile")

creation_adam = ArtPiece.create(title: "La Création d'Adam", artist: 'Michel Ange', unit_price: 700, description: "La Création d'Adam est l'une des neuf fresques inspirées du livre de la Genèse, peintes par Michel-Ange sur la partie centrale de la voûte du plafond de la chapelle Sixtine.", size: "2,8 m x 5,7 m", picture: "https://www.francetvinfo.fr/pictures/-_kvn4VrUv06ZsUBKrDU-5dODds/752x423/2021/01/15/phpKFVB5z.jpg", user: user, category: "Classicism", painting_technic: "Fresque")

red_blue_yellow = ArtPiece.create(title: "Composition with Red Blue and Yellow", artist: 'Piet Mondrian', unit_price: 800, description: "Œuvre d'art bien connue, Mondrian contribue largement au langage visuel abstrait malgré l'utilisation d'une toile relativement petite.", size: "59,5 cm × 59,5 cm", picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Piet_Mondriaan%2C_1930_-_Mondrian_Composition_II_in_Red%2C_Blue%2C_and_Yellow.jpg/1280px-Piet_Mondriaan%2C_1930_-_Mondrian_Composition_II_in_Red%2C_Blue%2C_and_Yellow.jpg", user: user, category: "Abstract", painting_technic: "Huile et papier sur toile")

bansky = ArtPiece.create(title: "La Petite Fille au ballon", artist: 'Bansky', unit_price: 500, description: "La Petite Fille au ballon est une série d'œuvres d'art urbain par Banksy, une peinture au pochoir apparue pour la première fois en 2002 à Londres sur le pont de Waterloo à South Bank.", size: "", picture: "https://1.bp.blogspot.com/-NnxOREK3qGM/W7ub8s-G9uI/AAAAAAAAQ5M/Or5VhTr-iVkMOYCU9JRE-rmBUM2JntCzQCLcBGAs/s1600/1009L18024_9YKNK.jpg", user: user, category: "Street Art", painting_technic: "Peinture au pochoir")
