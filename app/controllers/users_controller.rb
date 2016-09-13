class UsersController < ApplicationController
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
    @lodgement = Lodgement.new
    @withdrawl = Withdrawl.new
  end

  private

  def user_create_params
    params.require(:user).permit(:name, :address, :phone_number, :balance)
  end

end
