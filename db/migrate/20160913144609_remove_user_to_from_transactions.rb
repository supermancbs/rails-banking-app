class RemoveUserToFromTransactions < ActiveRecord::Migration[5.0]
  def change
    remove_column :transactions, :user_to
  end
end
