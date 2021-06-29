class Bike < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :photo, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :location, presence: true
end
