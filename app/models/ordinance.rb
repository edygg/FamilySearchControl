class Ordinance < ActiveRecord::Base
  belongs_to :ancestor
  belongs_to :ordinance_type
end
