class CreateArtPieces < ActiveRecord::Migration[6.0]
  def change
    create_table :art_pieces do |t|
      t.string :title
      t.text :description
      t.integer :unit_price
      t.string :artist
      t.string :category
      t.string :painting_technic
      t.string :size
      t.string :picture
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
