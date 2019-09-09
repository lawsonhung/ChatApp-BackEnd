class ChatsController < ApplicationController
  def index
    @chats = Chat.all
    # byebug
    render json: @chats
  end

def show
    @chat = Chat.find(params[:id])
    render json: @chat
  end

def create
    @chat = Chat.create(chat_params)
    render json: @chat
  end

def update
  @chat = Chat.find(params[:id])
  @chat.update(chat_params)
  render json: @chat
end


def destroy
    @chat = Chat.destroy(params[:id])
    render json: @chat
  end
end


private

def chat_params
    params.require(:chat).permit(:name)
  end
