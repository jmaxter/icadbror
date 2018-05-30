class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :empno
      t.string :empname
      t.string :department
      t.string :email
      t.string :phone

      t.timestamps null: false
    end
  end
end
