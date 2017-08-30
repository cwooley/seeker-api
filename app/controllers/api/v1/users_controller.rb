class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.new(username: params[:username], password:params[:password])
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
    # render json: @user
  end
end
