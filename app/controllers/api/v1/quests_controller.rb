class Api::V1::QuestsController < ApplicationController
  def index
    @quests = Quest.all
    render json: @quests, status: 200
  end

  def create
    @quest = Quest.create(quest_params)
    render json: @quest, status: 201
  end

  private
  def quest_params
    params.permit(:body)
  end
end
