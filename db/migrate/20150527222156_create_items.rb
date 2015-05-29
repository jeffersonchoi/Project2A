class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :user, index: true
      t.references :orderline, index: true
      t.string :name
      t.integer :stock_quantity
      t.float :marked_price

      t.timestamps null: false
    end
  end
end
