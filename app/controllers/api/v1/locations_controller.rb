class Api::V1::LocationsController < ApplicationController
  def index
    @locations = Location.all
    render json: @locations, status: 200
  end

  def create
    @location = Location.create(location_params)
    render json: @location, status: 201
  end

  private
  def location_params
    params.permit(:body)
  end
end
