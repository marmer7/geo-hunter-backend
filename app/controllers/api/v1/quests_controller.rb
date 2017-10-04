class Api::V1::QuestsController < ApplicationController
  def index
    @quests = Quest.all
    render json: @quests, status: 200
  end

  def create
    location = Location.find_or_create_by(location_params)
    @quest = Quest.new(quest_params)
    @quest.location = location
    @quest.save
    render json: @quest, status: 201
  end

  private
  def quest_params
    params.permit(:user_id, :name, :prize)
  end
  def location_params
    params.require(:location).permit(:address, :latitude, :longitude)
  end
end
