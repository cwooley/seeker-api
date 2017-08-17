class Api::V1::AuthController < ApplicationController
  def create
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])

      payload = { user_id: user.id}
      token = issue_token(payload)
      render json: { jwt: token}
    else
      byebug
      # you're not the right person
    end
  end
end
