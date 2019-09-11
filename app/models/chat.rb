class Chat < ApplicationRecord
  has_many :chat_boxes, :dependent => :destroy
  has_many :users, through: :chat_boxes
end
