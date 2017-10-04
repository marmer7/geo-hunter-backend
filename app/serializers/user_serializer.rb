class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :points
  has_many :quests
end
