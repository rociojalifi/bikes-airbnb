class Bike < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  has_many :reviews, dependent: :destroy

  include PgSearch::Model

  pg_search_scope :supersearch,
   against: :location,
   using: {
     tsearch: { prefix: true }
   }

  validates :description, presence: true
  validates :price, presence: true
  validates :location, presence: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

end
