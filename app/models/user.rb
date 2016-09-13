class User < ApplicationRecord
  has_many :lodgements
  has_many :transactions
  has_many :Withdrawls
  
end
