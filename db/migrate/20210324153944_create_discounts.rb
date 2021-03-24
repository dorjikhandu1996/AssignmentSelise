class CreateDiscounts < ActiveRecord::Migration[6.1]
  def change
    create_table :discounts do |t|
      t.references :product, null: false, foreign_key: true
      t.string :name
      t.float :discount_amount
      t.float :discount_percent
      t.integer :unit
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end
