class AddInfoToProduct < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :info, :text
  end
end
