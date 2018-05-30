class CreateEventplans < ActiveRecord::Migration
  def change
    create_table :eventplans do |t|
      t.string :planno
      t.string :eventno
      t.date :workdate
      t.text :notes
      t.string :activity
      t.string :empno

      t.timestamps null: false
    end
  end
end
