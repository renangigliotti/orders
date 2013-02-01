class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :address
      t.string :number
      t.string :district
      t.string :zipcode
      t.integer :city_id
      t.date :date_birth
      t.string :rgie
      t.string :cpfcnpj
      t.string :email

      t.timestamps
    end
  end
end
