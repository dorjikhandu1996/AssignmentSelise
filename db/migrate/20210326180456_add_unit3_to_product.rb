class AddUnit3ToProduct < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :unit3, :integer
  end
end
