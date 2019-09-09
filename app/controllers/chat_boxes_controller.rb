class ChatBoxesController < ApplicationController
  def index
      @chat_boxes = ChatBox.all
      render json: @chat_boxes
    end

  def show
      @chat_box = ChatBox.find(params[:id])
      render json: @chat_box
    end

  def create
      @chat_box = ChatBox.create(chat_box_params)
      render json: @chat_box
    end

  def update
    @chat_box = ChatBox.find(params[:id])
    @chat_box.update(chat_box_params)
    render json: @chat_box
  end


  def destroy
      @chat_box = ChatBox.destroy(params[:id])
      render json: @chat_box
    end
  end


private

  def chat_box_params
      params.require(:chat_boxes).permit(:user_id, :chat_id, :message)
    end
