class Api::V1::UsersController < ApplicationController

  def create
    @user = User.create(user_params)
    render json: @user, status: 201
  end

  def show
    @user = User.find(params[:id])
    render json: @user, status: 200
  end

  private
  def user_params
    params.permit(:username, :password, :points)
  end
end
