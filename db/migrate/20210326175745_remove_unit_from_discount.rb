class RemoveUnitFromDiscount < ActiveRecord::Migration[6.1]
  def change
    remove_column :discounts, :unit, :integer
  end
end
