class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.string :purchase_history

      t.timestamps null: false
    end
  end
end
