class RemoveUnit2FromProduct < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :unit2, :integer
  end
end
