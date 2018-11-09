class MessagesController < ApplicationController
  before_action :require_user, only: [:show]

  def index
    @messages = Message.all
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
     redirect_to '/messages'
    else
      render 'new'
    end
  end

  def show
    @message = Message.find(params[:id])
  end

  def destroy
    @message = Message.find(params[:id])
    @message.delete
    redirect_back(fallback_location: :feedback)
  end

  private
  def message_params
    params.require(:message).permit(:email, :name, :message_text)
  end

end
