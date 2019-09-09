class ChatSerializer < ActiveModel::Serializer
  attributes :id , :name
  has_many :users
  has_many :chat_boxes


end
