class CreateParcialities < ActiveRecord::Migration
  def change
    create_table :parcialities do |t|
      t.string :description
      t.integer :with_interest
      t.decimal :total_amount, precision: 9, scale: 2
      t.timestamp :date_start
      t.integer :same_day_charge
      t.timestamp :last_payment
      t.integer :total_months
      t.integer :paid_months
      t.integer :account_id
      t.string :notes

      t.timestamps null: false
    end
  end
end
