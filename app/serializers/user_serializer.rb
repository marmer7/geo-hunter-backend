class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :points
  has_many :quests
  has_many :hunts
end
