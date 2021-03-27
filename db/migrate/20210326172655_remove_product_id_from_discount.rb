class RemoveProductIdFromDiscount < ActiveRecord::Migration[6.1]
  def change
    remove_column :discounts, :product_id, :integer
  end
end
