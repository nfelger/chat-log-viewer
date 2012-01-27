class ChatsController < ApplicationController
  def index
    @chats = Chat.all
  end

  def invite
    chat_name = Chat.find(params[:id]).name
    return render :text => "400 Bad Request: username required", :status => 400 unless params[:username].present?

    Rype::Chat.new(chat_name).add_members([params[:username]])
    render :text => 'ok'
  end
end
