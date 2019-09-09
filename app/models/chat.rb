class Chat < ApplicationRecord
  has_many :chat_boxes
  has_many :users, through: :chat_boxes
end
