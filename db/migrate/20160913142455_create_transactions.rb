class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.string :date
      t.string :transaction_type
      t.integer :amount
      t.integer :user_id
      t.integer :user_to

      t.timestamps
    end
  end
end
