class WithdrawlsController < ApplicationController

  def create
    @withdrawl = Withdrawl.create(withdrawls_params)
    @user = User.find(withdrawls_params[:user_id])
    @user.lower_balance(withdrawls_params[:amount])
    @user.save
    redirect_to user_path (@user)
  end

  private

  def withdrawls_params
    params.require(:deposit).permit(:amount, :user_id)
  end

end
