class Api::V1::HuntsController < ApplicationController

  def create
    @hunt = Hunt.create(hunt_params)
    render json: @hunt, status: 201
  end

  private
  def hunt_params
    params.permit(:user_id, :quest_id)
  end


end
