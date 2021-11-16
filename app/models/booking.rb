class Booking < ApplicationRecord
  belongs_to :user, :experience
  validates :start_time, :end_time, presence: true
end
