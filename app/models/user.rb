class User < ApplicationRecord
  has_many :deposits
  has_many :withdrawls
  has_many :buys, :class_name => 'Transaction', :foreign_key => 'buyer_id'
  has_many :sells, :class_name => 'Transaction', :foreign_key => 'seller_id'
  has_secure_password

  def lower_balance(amount)
    self.balance = self.balance.to_i - amount.to_i
  end

  def increase_balance(amount)
    self.balance = self.balance.to_i + amount.to_i
  end

end
