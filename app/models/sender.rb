class Sender < ActiveRecord::Base
  # Associations
  belongs_to :user
  has_many :ancestors
end
