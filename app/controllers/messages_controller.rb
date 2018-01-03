class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      redirect_to root_path, notice: "Thanks for leaving a message, I will get back to you shortly!"
    else
      redirect_to root_path, alert:
        "There was a problem with your message. Please try again."
    end
  end

  def show
    @messages = Message.order(created_at: :desc)
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :message)
  end
end
