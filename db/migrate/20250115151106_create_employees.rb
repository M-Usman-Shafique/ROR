class CreateEmployees < ActiveRecord::Migration[8.0]
  def change
    create_table :employees do |t|
      t.string :username
      t.integer :age
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
