# == Schema Information
#
# Table name: papers
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  year       :integer
#  notes      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Paper < ActiveRecord::Base
  belongs_to :publication
  has_and_belongs_to_many :authors
  
  attr_accessible :notes, :title, :year

  validates :title, :presence => true,
                    :length => { :maximum => 255 }
  validates :year, :presence => true
end
