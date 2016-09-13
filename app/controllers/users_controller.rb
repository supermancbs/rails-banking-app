class UsersController < ApplicationController
  before_filter :authorize
  before_filter :validate_user
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_create_params)
    if @user.save
      redirect_to @user
    else
      render "new"
    end
  end

  def show
    @user = User.find(params[:id])
    @deposit = Deposit.new
    @withdrawl = Withdrawl.new
    @transaction = Transaction.new
  end

  def index
    @users = User.all
  end

  def validate_user
    redirect_to user_path(current_user) unless current_user == User.find(params[:id])
  end

  private

  def user_create_params
    params.require(:user).permit(:name, :address, :phone_number, :balance, :password, :password_confirmation)
  end

end
