class Booking < ApplicationRecord
  STATUS = %w(pending confirmed rejected)
  belongs_to :user, :experience
  validates :start_time, :end_time, presence: true
  validates :status, inclusion: { in: STATUS }
end
