require 'rails_helper'


# create_table "users", force: :cascade do |t|
#   t.string   "name"
#   t.string   "address"
#   t.string   "phone_number"
#   t.integer  "balance"
#   t.datetime "created_at",   null: false
#   t.datetime "updated_at",   null: false
# end
#
# create_table "withdrawls", force: :cascade do |t|
#   t.integer  "user_id"
#   t.integer  "amount"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end


RSpec.describe User, type: :model do
  it "has withdrawls" do
    clark = User.create!(name: "Clark", address: "123 Main", phone_number: "917", balance: 50)
    withdrawls = Withdrawl.create!(user: clark, amount: 10)
    expect(clark.withdrawls).to eq([withdrawls])
  end
end
