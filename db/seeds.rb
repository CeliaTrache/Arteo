# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

nuit_etoilee = ArtPiece.create(title: 'La nuit étoilée', artist: 'Van Gogh', unit_price: 1000, description: "", category: "", painting_technic: "", size: "", picture: "", user_id: 1)
Joconde = ArtPiece.create(title: 'Mona lisa', artist: 'Léonard de Vinci', unit_price: 1000000000, description: "", category: "", painting_technic: "", size: "", picture: "", user_id: 2)
