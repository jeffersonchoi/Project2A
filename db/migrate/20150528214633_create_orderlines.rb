class CreateOrderlines < ActiveRecord::Migration
  def change
    create_table :orderlines do |t|
      t.references :order
      t.integer :quantity
      t.float :selling_price
      t.float :total_price

      t.timestamps null: false
    end
  end
end
