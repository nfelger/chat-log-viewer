class MessagesController < ApplicationController
  def index
    error(404) unless chat = Chat.find_by_id(params[:chat_id])
    @messages = chat.messages
  end
end
