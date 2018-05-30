class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :resno
      t.string :resname
      t.float :rate

      t.timestamps null: false
    end
  end
end
