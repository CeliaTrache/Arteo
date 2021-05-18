class Booking < ApplicationRecord
  belongs_to :art_piece
  belongs_to :user
  validates :start_time, :end_time, presence: true
end
