# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ArtPiece.delete_all
User.delete_all

user = User.create(email: "leonard@hotmail.fr", password: "123456", first_name: "vincent", last_name:"vinciguerra")

nuit_etoilee = ArtPiece.create(title: 'La nuit étoilée', artist: 'Van Gogh', unit_price: 1000, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", size: "100x100", picture: "https://zeuxis-art.com//img/cms/Il%20etait%20une%20fois/la_nuit_etoilee.jpg", user: user, category: "Breakfast")
joconde = ArtPiece.create(title: 'La Joconde', artist: 'Leonard de Vinci', unit_price: 1000, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", size: "100x100", picture: "https://www.ixxiyourworld.com/media/2387797/mona-lisa.jpg?mode=crop&width=562&height=838", user: user, category: "Breakfast")
creation_adam = ArtPiece.create(title: "La Création d'Adam", artist: 'Michel Ange', unit_price: 1000, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", size: "100x100", picture: "https://www.francetvinfo.fr/pictures/-_kvn4VrUv06ZsUBKrDU-5dODds/752x423/2021/01/15/phpKFVB5z.jpg", user: user, category: "Abstract")

