class CreateAnimals < ActiveRecord::Migration[6.1]
  def change
    create_table :animals do |t|
      t.string :name
      t.boolean :endangered, :default => false
      t.boolean :migratory, :default => false
      t.integer :habitat, :default => 2

      t.timestamps
    end
  end
end
