class Experience < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :title, :price, :location, :duration, presence: true
  validates :description, presence: true, length: { minimum: 70 }
end
