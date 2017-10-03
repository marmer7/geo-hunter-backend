class Api::V1::UserLocationsController < ApplicationController

  def create
    location = Location.find_or_create_by(latitude: user_location_params[:latitude], longitude: user_location_params[:longitude])
    @user_location = UserLocation.create(user_id: user_location_params[:user_id], location_id: location.id)
    render json: @user, status: 201
  end

  def show
    @user_location = UserLocation.find(params[:id])
    render json: @user, status: 200
  end

  private
  def user_location_params
    params.permit(:user_id, :latitude, :longitude)
  end

end
