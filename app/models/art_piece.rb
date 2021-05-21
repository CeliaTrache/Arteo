class ArtPiece < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :title, presence: true
  has_one_attached :photo
end
