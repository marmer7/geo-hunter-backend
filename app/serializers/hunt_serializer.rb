class HuntSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :quest_id
  has_one :user
  has_one :quest
end
