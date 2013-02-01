class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :order_id
      t.integer :product_id
      t.decimal :quantity
      t.decimal :price
      t.decimal :discount
      t.boolean :budget
      t.boolean :finished

      t.timestamps
    end
  end
end
