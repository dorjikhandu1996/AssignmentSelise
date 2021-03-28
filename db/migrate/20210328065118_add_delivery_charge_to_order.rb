class AddDeliveryChargeToOrder < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :delivery_charge, :float
  end
end
