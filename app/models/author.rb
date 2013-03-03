class Author < ActiveRecord::Base
  has_and_belongs_to_many :papers
  
  attr_accessible :given_name, :surname
  
  def to_label
    if given_name.nil?
      surname
    else
      "#{surname}, #{given_name[0]}."
    end 
  end
end
