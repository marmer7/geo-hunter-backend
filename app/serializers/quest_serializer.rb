class QuestSerializer < ActiveModel::Serializer
  attributes :id, :name, :prize
  has_one :location
  has_one :user
end
