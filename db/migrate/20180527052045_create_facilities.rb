class CreateFacilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|
      t.string :facno
      t.string :facname

      t.timestamps null: false
    end
  end
end
