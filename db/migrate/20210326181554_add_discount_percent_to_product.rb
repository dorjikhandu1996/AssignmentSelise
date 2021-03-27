class AddDiscountPercentToProduct < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :discount_percent, :integer
  end
end
