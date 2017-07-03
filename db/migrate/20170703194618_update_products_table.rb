class UpdateProductsTable < ActiveRecord::Migration[5.1]
  def change
    add_index :products, [:name, :country], :unique => true
  end
end
