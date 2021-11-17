class Experience < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many_attached :photos
<<<<<<< HEAD
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :title, :price, :address, :duration, presence: true
=======
  validates :title, :price, :location, :duration, presence: true
>>>>>>> f4cb4d454dabfd6220e79061332e4d956b187b6d
  validates :description, presence: true, length: { minimum: 70 }
end
