class Ancestor < ActiveRecord::Base
  # Associations
  belongs_to :user
  belongs_to :sender
  has_many :ordinances
  has_many :ordinance_types, through: :ordinances
end
