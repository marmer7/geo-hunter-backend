class QuestSerializer < ActiveModel::Serializer
  attributes :id, :name, :prize, :description, :hint
  has_one :location
  has_one :user
end
