class CreateAnimals < ActiveRecord::Migration[6.1]
  def change
    create_table :animals do |t|
      t.string :name
      t.boolean :endangered
      t.boolean :migratory
      t.integer :habitat

      t.timestamps
    end
  end
end
