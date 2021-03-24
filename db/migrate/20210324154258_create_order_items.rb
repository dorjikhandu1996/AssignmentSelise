class CreateOrderItems < ActiveRecord::Migration[6.1]
  def change
    create_table :order_items do |t|
      t.integer :quantity
      t.integer :product_id
      t.integer :order_id
      t.integer :discount_id
      t.float :unit_price
      t.float :total

      t.timestamps
    end
  end
end
