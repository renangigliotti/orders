class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.date :date
      t.date :date_forecast
      t.decimal :discount
      t.boolean :budget
      t.boolean :finished

      t.timestamps
    end
  end
end
