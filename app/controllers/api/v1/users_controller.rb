class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user
    else
      # show some error
      render json: { message: "User not created"}
    end
  end

  def show
    @user = User.find(params[:id])
    render :json => @user.to_json(:include => {:companies => {:include => [:contacts, :interactions ]}})
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      render json: @user
    else
      render json: { message: "User not updated"}
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :username, :profile_image_url, :password)
  end
end
