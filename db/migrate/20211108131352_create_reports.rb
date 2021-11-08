class CreateReports < ActiveRecord::Migration[6.1]
  def change
    create_table :reports do |t|
      t.date :from
      t.date :to

      t.timestamps
    end
  end
end
