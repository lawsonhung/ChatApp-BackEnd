class User < ApplicationRecord
  has_many :chat_boxes, :dependent => :destroy
  has_many :chats, through: :chat_boxes
end
