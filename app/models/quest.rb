class Quest < ApplicationRecord
  belongs_to :user
  belongs_to :location
  has_many :hunts
  has_many :users, through: :hunts

end
