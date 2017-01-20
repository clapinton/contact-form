class Api::MessagesController < ApplicationController

  def index
    @messages = Message.all
  end

  def create
    @message = Message.new(message_params)
    @message.sent = false
    if @message.save
      @message.send_message
      @messages = Message.all
      render "api/messages/index"
    else
      render json: @message.errors.full_messages
    end
  end

  private

  def message_params
    params.require(:message).permit(:from_email, :body)
  end

end
