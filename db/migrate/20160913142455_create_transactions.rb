class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.integer :user_id
      t.integer :user_to
      t.string :date
      t.string :transaction_type
      t.integer :amount

      t.timestamps
    end
  end
end
