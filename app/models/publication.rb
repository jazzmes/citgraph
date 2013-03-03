class Publication < ActiveRecord::Base
  belongs_to :publication_type
  attr_accessible :name
end
