class RemoveUnit3FromProduct < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :unit3, :integer
  end
end
