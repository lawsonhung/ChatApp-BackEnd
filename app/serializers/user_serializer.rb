class UserSerializer < ActiveModel::Serializer
  attributes :id ,:name ,:online_status
  has_many :chats
  has_many :chat_boxes
end
