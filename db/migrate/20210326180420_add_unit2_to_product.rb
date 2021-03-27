class AddUnit2ToProduct < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :unit2, :integer
  end
end
