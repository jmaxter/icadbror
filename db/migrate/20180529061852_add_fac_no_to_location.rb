class AddFacNoToLocation < ActiveRecord::Migration
  def change
    # provisional
    add_column :locations, :facno, :string
    add_index :locations, :facno
  end
end
