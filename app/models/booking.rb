class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :bike

  validates :pick_up, presence: true
  validates :drop_off, presence: true
end
