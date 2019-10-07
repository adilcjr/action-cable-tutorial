class ChatroomsController < ApplicationController
  def show
    @messages = Message.all
  end
end
