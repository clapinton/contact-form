class Api::MessagesController < ApplicationController

  def index
    if params[:euzinho] == ENV["access_secret"]
      @messages = Message.all
    else
      @messages = []
    end
  end

  def create
    @message = Message.new(message_params)
    @message.sent = false
    if !(@message.captcha_validated?)
      render json: ["Invalid captcha"], status: 401
    elsif @message.save
      # @message.send_message
      render json: ["Success"], status: 200
    else
      render json: @message.errors.full_messages
    end
  end

  private

  def message_params
    params.require(:message).permit(:from_email, :body, :captcha_key)
  end

end
