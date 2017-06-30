class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.column :name, :string
      t.column :country, :string
      t.column :cost, :decimal

      t.timestamps
    end
  end
end
