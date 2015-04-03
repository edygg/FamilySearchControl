class OrdinanceType < ActiveRecord::Base
  # Associations
  has_many :ordinances
  has_many :ancestors, through: :ordinances
end
