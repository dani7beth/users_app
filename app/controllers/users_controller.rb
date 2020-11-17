class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  private
  def users_params
    params.require(:user).permit(:full_name, :age, :gender, :alive)
  end
end
