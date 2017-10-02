class QuestSerializer < ActiveModel::Serializer
  attributes :id, :prize
  has_one :location
  has_one :user
end
