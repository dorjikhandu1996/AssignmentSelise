class AddDiscountAmountToProduct < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :discount_amount, :float
  end
end
