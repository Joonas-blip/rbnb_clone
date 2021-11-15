class AddExperienceToBookings < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookings, :experience, null: false, foreign_key: true
  end
end
