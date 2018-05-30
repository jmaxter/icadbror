class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :custno
      t.string :custname
      t.text :address
      t.string :internal
      t.string :contact
      t.string :phone
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps null: false
    end
  end
end
