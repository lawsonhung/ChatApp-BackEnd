class User < ApplicationRecord
  has_many :chats
  has_many :chats, through: :chat_box
end
