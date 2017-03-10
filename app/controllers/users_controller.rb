class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :destroy]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    redirect_to users_path if @user.save
  end

  def edit
  end

  def update
    redirect_to users_path if @user.update(user_params)
  end

  def destroy
    redirect_to users_path if @user.destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
