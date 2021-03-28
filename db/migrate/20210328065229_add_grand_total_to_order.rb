class AddGrandTotalToOrder < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :grand_total, :float
  end
end
