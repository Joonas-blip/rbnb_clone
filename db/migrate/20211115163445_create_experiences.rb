class CreateExperiences < ActiveRecord::Migration[6.0]
  def change
    create_table :experiences do |t|
      t.string :title
      t.string :location
      t.string :description
      t.float :price
      t.integer :duration
      t.string :category

      t.timestamps
    end
  end
end
