class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.text :first_name
      t.text :last_name
      t.text :email
      t.timestamps
    end
  end
end
