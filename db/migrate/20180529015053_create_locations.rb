class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :locno
      t.string :locname
      t.references :facility, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
