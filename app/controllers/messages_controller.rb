class MessagesController < ApplicationController
  # before_action :set_room 

  def index
    @message = Message.new
    @room = Room.find(params[:room_id])
  end

  def create
    @room = Room.find(params[:room_id])
    @message = @room.messages.create(message_params)
    if @message.save
      redirect_to room_messages_path(@room)
    else
      render :index
    end

  end
 
  private

  def message_params
    params.require(:message).permit(:content).merge(user_id: current_user.id)
  end

  # def set_room
  #   @room = Room.find(params[:room_id])
  # end


end
