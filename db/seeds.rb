# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Review.delete_all
Booking.delete_all
ArtPiece.delete_all
User.delete_all


user_1 = User.create(email: "leonard@hotmail.fr", password: "123456", first_name: "vincent", last_name:"vinciguerra")

user = User.create(email: "cindygrenet@hotmail.fr", password: "123456", first_name: "Cindy", last_name: "Grenet")

nuit_etoilee = ArtPiece.create(title: 'La nuit étoilée', artist: 'Van Gogh', unit_price: 900, description: "The Starry Night is a painting by the Dutch Post-Impressionist painter Vincent van Gogh.", size: "74 cm x 92 cm", picture: "https://zeuxis-art.com//img/cms/Il%20etait%20une%20fois/la_nuit_etoilee.jpg", user: user, category: "Impressionnistic", painting_technic: "Oil painting")
booking1 = Booking.create(start_time: "19/05/2021", end_time:"20/05/2021" , price: 900, user: user_1, status: "waiting", art_piece: nuit_etoilee)

joconde = ArtPiece.create(title: 'La Joconde', artist: 'Leonard de Vinci', unit_price: 1300, description: "The Mona Lisa, or Portrait of Mona Lisa, is a painting by the artist Leonardo da Vinci, made between 1503 and 1506.", size: "77 cm x 53 cm", picture: "https://www.ixxiyourworld.com/media/2387797/mona-lisa.jpg?mode=crop&width=562&height=838", user: user, category: "Classicism", painting_technic: "Oil painting")
booking2 = Booking.create(start_time: "18/05/2021", end_time:"19/05/2021" , price: 1300, user: user_1, status: "validate", art_piece: joconde)

creation_adam = ArtPiece.create(title: "La Création d'Adam", artist: 'Michel Ange', unit_price: 700, description: "The Creation of Adam is one of nine frescoes inspired by the book of Genesis, painted by Michelangelo on the vault of the ceiling of the Sistine Chapel.", size: "2,8 m x 5,7 m", picture: "https://www.francetvinfo.fr/pictures/-_kvn4VrUv06ZsUBKrDU-5dODds/752x423/2021/01/15/phpKFVB5z.jpg", user: user, category: "Classicism", painting_technic: "Fresco")
booking3 = Booking.create(start_time: "18/05/2021", end_time:"19/05/2021" , price: 700, user: user_1, status: "decline", art_piece: creation_adam)

red_blue_yellow = ArtPiece.create(title: "Composition with Red Blue and Yellow", artist: 'Piet Mondrian', unit_price: 800, description: "A well-known work of art, Mondrian makes a significant contribution to abstract visual language despite the use of a relatively small canvas.", size: "59,5 cm × 59,5 cm", picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Piet_Mondriaan%2C_1930_-_Mondrian_Composition_II_in_Red%2C_Blue%2C_and_Yellow.jpg/1280px-Piet_Mondriaan%2C_1930_-_Mondrian_Composition_II_in_Red%2C_Blue%2C_and_Yellow.jpg", user: user, category: "Abstract", painting_technic: "Oil painting")
booking4 = Booking.create(start_time: "14/05/2021", end_time:"15/05/2021" , price: 800, user: user_1, status: "decline", art_piece: red_blue_yellow)

banksy = ArtPiece.create(title: "La Petite Fille au ballon", artist: 'Banksy', unit_price: 500, description: "The Little Girl with the Ball is a series of urban artwork by Banksy, a stencil painting that first appeared in 2002 in London on Waterloo Bridge in South Bank.", size: "2,8 m x 5,7 m", picture: "https://1.bp.blogspot.com/-NnxOREK3qGM/W7ub8s-G9uI/AAAAAAAAQ5M/Or5VhTr-iVkMOYCU9JRE-rmBUM2JntCzQCLcBGAs/s1600/1009L18024_9YKNK.jpg", user: user, category: "Street Art", painting_technic: "Stencil painting")
booking5 = Booking.create(start_time: "11/05/2021", end_time:"12/05/2021" , price: 500, user: user_1, status: "decline", art_piece: banksy)

la_cène = ArtPiece.create(title: "La cène", artist: 'Léonard de vinci', unit_price: 10000, description: "The Last Supper (term from the Latin cena: evening meal) is the name of the last meal that Jesus Christ ate with the Twelve Apostles.", size: "", picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/The_Last_Supper_-_Leonardo_Da_Vinci_-_High_Resolution_32x16.jpg/390px-The_Last_Supper_-_Leonardo_Da_Vinci_-_High_Resolution_32x16.jpg", user: user_1, category: "Classicism", painting_technic: "Fresco")
booking6 = Booking.create(start_time: "14/04/2021", end_time:"15/04/2021" , price: 10000, user: user, status: "waiting", art_piece: la_cène)

le_desespéré = ArtPiece.create(title: "Le desespéré", artist: 'Gustave Courbet', unit_price: 300, description: "It's a self-portrait in the guise of a young man staring straight ahead, his hands clenched in his hair.", size: "77 cm x 53 cm", picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Gustave_Courbet_-_Le_D%C3%A9sesp%C3%A9r%C3%A9_%281843%29.jpg/1200px-Gustave_Courbet_-_Le_D%C3%A9sesp%C3%A9r%C3%A9_%281843%29.jpg", user: user_1, category: "Classicism", painting_technic: "Fresco")
booking7 = Booking.create(start_time: "14/06/2021", end_time:"15/06/2021" , price: 300, user: user, status: "validate", art_piece: le_desespéré)

oreille_bandée = ArtPiece.create(title: "L'oreille bandée", artist: 'Van Gogh', unit_price: 100, description: "Self-Portrait with the Bandaged Ear is an oil painting on canvas by the painter Vincent Van Gogh made in January 1889.", size: "1m50 x 2m20", picture: "https://www.leparisien.fr/resizer/2R8LBy212k4kZCF3bi3q_U2xENc=/1280x800/arc-anglerfish-eu-central-1-prod-leparisien.s3.amazonaws.com/public/TO47MRXTXKQDPSM5EXPF3WIXNU.jpg", user: user, category: "Impressionnistic", painting_technic: "Oil painting")
booking8 = Booking.create(start_time: "11/06/2021", end_time:"12/06/2021" , price: 100, user: user_1, status: "validate", art_piece: oreille_bandée)

shot_Marilyns = ArtPiece.create(title: "Shot Marilyns", artist: 'Andy Warhol', unit_price: 200, description: "The Shot Marilyns is a work of art depicting Marilyn Monroe produced in 1964 by Andy Warhol", size: "1m50 x 2m20", picture: "https://fondationtgcc.com/wp-content/uploads/2020/06/shot-marilyns.jpg", user: user, category: "Impressionnistic", painting_technic: "Oil painting")
booking9 = Booking.create(start_time: "11/06/2021", end_time:"12/06/2021" , price: 200, user: user_1, status: "validate", art_piece: shot_Marilyns)

vieil_homme = ArtPiece.create(title: "Vieil homme affligé", artist: 'Van Gogh', unit_price: 30, description: "Post Impressionism. Grieving Old Man - Vincent van Gogh Undated", size: "1m30 x 2m10", picture: "https://www.meisterdrucke.fr/kunstwerke/500px/Vincent%20van%20Gogh%20-%20Old%20Man%20Grieving%20-%20%28MeisterDrucke-22864%29.jpg", user: user, category: "Impressionnistic", painting_technic: "Oil painting")
booking10 = Booking.create(start_time: "11/06/2021", end_time:"12/06/2021" , price: 30, user: user_1, status: "validate", art_piece: vieil_homme )

evolution = ArtPiece.create(title: "Banksy art evolution", artist: 'Banksy', unit_price: 90, description: "Banksy Art evolution is a work of street art highlighting the evolution of art according to Banksy.", size: "1m10 x 2m10", picture: "https://images-na.ssl-images-amazon.com/images/I/71AQdQ2ZpOL._AC_SX522_.jpg", user: user, category: "Street Art", painting_technic: "Stencil painting")
booking11 = Booking.create(start_time: "11/06/2021", end_time:"12/06/2021" , price: 90, user: user, status: "validate", art_piece: evolution)

obama = ArtPiece.create(title: "Obama", artist: 'Shepard Fairey', unit_price: 10, description: "Portrait of Obama in the color of America", size: "1m10 x 2m10", picture: "https://street-art-avenue.com/wp-content/uploads/2013/09/hope-shepard-fairey.jpg", user: user, category: "Street Art", painting_technic: "Stencil painting")
booking12 = Booking.create(start_time: "22/06/2021", end_time:"23/06/2021" , price: 10, user: user_1, status: "validate", art_piece: obama)
