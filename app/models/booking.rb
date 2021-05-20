class Booking < ApplicationRecord
  belongs_to :art_piece
  belongs_to :user
  validates :start_time, :end_time, presence: true
  validates :status, acceptance: {accept: ['validate', 'decline', 'waiting']}
end
