class Experience < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many_attached :photos
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :title, :price, :address, :duration, presence: true
  validates :description, presence: true, length: { minimum: 70 }
end
