class AddBuyerAndSellerToTransactions < ActiveRecord::Migration[5.0]
  def change
    add_reference :transactions, :buyer, foreign_key: true
    add_reference :transactions, :seller, foreign_key: true
  end
end
