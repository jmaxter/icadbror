class CreateEventplanlines < ActiveRecord::Migration
  def change
    create_table :eventplanlines do |t|
      t.string :planno
      t.integer :lineno
      t.time :timestart
      t.time :timeend
      t.integer :numberfld
      t.string :locno
      t.string :resno

      t.timestamps null: false
    end
  end
end
