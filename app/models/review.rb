class Review < ApplicationRecord
  belongs_to :art_piece
  belongs_to :user
end
