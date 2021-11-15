class AddAvailabilityToExperiences < ActiveRecord::Migration[6.0]
  def change
    add_column :experiences, :availability, :boolean, default: true
  end
end
