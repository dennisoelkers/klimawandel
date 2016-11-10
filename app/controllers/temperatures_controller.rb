class TemperaturesController < ApplicationController
  before_action :fetch_room
  def show
    render json: {target: @room.target}
  end

  def update
    @room.update!(target: params[:target])
  end

  private
  def fetch_room
    @room = Room.find(params[:room_id])
  end
end
