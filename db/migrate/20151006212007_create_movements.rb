class CreateMovements < ActiveRecord::Migration
  def change
    create_table :movements do |t|
      t.decimal :amount, precision: 9, scale: 2
      t.timestamp :mov_date
      t.string :mov_type
      t.string :description
      t.integer :account_id
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
