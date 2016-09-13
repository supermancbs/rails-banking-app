class CreateDeposits < ActiveRecord::Migration[5.0]
  def change
    create_table :deposits do |t|
      t.integer :user_id
      t.integer :amount
      t.string :date

      t.timestamps
    end
  end
end
