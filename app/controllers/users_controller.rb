class UsersController < ApplicationController

  def create
    user = User.new(
      name: params[:input_name],
      password: params[:input_password],
      password_confirmation: params[:input_password_confirmation]
    )
    user.save
    render json: user
  end

end
