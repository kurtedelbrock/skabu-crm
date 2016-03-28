class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.create params.require(:user).permit(:email)
    render json: @user
  end
end
