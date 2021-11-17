class Experience < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many_attached :photos
  geocoded_by :location
  after_validation :geocode
  validates :title, :price, :location, :duration, presence: true
  validates :description, presence: true, length: { minimum: 70 }
end
