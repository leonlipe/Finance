class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :account_type
      t.decimal :credit_limit, precision: 5, scale: 2
      t.integer :bank_id
      t.timestamps null: false
    end
  end
end
