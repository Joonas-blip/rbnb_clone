class Booking < ApplicationRecord
  STATUS = %w(pending confirmed rejected)
  belongs_to :user
  belongs_to :experience
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :status, inclusion: { in: STATUS }
end
