class CreateEventrequests < ActiveRecord::Migration
  def change
    create_table :eventrequests do |t|
      t.string :eventno
      t.date :dateheld
      t.date :datereq
      t.string :custno
      t.string :facno
      t.date :dateauth
      t.string :status
      t.decimal :estcost
      t.integer :estaudience
      t.string :budno

      t.timestamps null: false
    end
  end
end
