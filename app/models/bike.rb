class Bike < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo

  validates :description, presence: true
  validates :price, presence: true
  validates :location, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
