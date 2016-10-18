class RoomsController < ApplicationController
  def index
    render json: Room.all
  end

  def create
    render json: Room.create(params.permit(:name, :device_ids))
  end
end
