require 'rails_helper'

RSpec.describe User, type: :model do

  it "has withdrawls" do
    clark = User.create!(name: "Clark", address: "123 Main", phone_number: "917", balance: 50)
    withdrawls = Withdrawl.create!(user: clark, amount: 10)
    expect(clark.withdrawls).to eq([withdrawls])
  end

  it "has lodgements" do
    clark = User.create!(name: "Clark", address: "123 Main", phone_number: "917", balance: 50)
    lodgement = Lodgement.create!(user: clark, amount: 10)
    expect(clark.lodgements).to eq([lodgement])
  end

  it "has buys" do
    clark = User.create!(name: "Clark", address: "123 Main", phone_number: "917", balance: 50)
    seller = User.create!(name: "rose", address: "123 plain", balance: 100)
    buy = Transaction.create!(buyer: clark, seller: seller, amount: 10)

    expect(clark.buys).to eq([buy])
  end

  it "has sells" do
    clark = User.create!(name: "Clark", address: "123 Main", phone_number: "917", balance: 50)
    buyer = User.create!(name: "rose", address: "123 plain", balance: 100)
    sell = Transaction.create!(buyer: buyer, seller: clark, amount: 10)
    expect(clark.sells).to eq([sell])
  end

end
