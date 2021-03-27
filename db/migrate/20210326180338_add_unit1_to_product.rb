class AddUnit1ToProduct < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :unit1, :integer
  end
end
