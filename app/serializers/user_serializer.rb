class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :online_status
end
