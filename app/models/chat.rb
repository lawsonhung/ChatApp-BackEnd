class Chat < ApplicationRecord
  has_many :users
  has_many :users, through: :chat_box
end
