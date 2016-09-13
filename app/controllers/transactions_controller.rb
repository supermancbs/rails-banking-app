class TransactionsController < ApplicationController
before_filter :authorize
  def create
    @user = User.find(transaction_create_params[:buyer_id])
    @seller = User.find(transaction_create_params[:seller_id])
    @user.lower_balance(transaction_create_params[:amount])
    @user.save
    @seller.increase_balance(transaction_create_params[:amount])
    @seller.save
    @transaction = Transaction.create(transaction_create_params)
    redirect_to user_path(@user)
  end

  private

  def transaction_create_params
    params.require(:transaction).permit(:buyer_id, :seller_id, :amount)
  end

end
