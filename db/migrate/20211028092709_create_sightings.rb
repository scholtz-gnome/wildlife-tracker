class CreateSightings < ActiveRecord::Migration[6.1]
  def change
    create_table :sightings do |t|
      t.references :animal, null: false, foreign_key: true
      t.references :region, null: false, foreign_key: true
      t.date :date
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
