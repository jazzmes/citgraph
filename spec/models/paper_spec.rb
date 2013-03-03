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

require 'spec_helper'

describe Paper do
  pending "add some examples to (or delete) #{__FILE__}"
end
