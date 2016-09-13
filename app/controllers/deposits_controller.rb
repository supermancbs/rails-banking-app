class DepositsController < ApplicationController
  before_filter :authorize
  def new
    @deposit = Deposit.new
  end

  def create
    @deposit = Deposit.create(create_deposit_params)
    @user = User.find(create_deposit_params[:user_id])
    @user.increase_balance(create_deposit_params[:amount])
    @user.save
    redirect_to user_path(@user)
  end

  private

  def create_deposit_params
    params.require(:deposit).permit(:user_id, :amount)
  end



end
