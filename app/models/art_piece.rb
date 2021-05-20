class ArtPiece < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews
  validates :title, presence: true
end
