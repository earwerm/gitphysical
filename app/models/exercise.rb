# == Schema Information
#
# Table name: exercises
#
#  id         :integer          not null, primary key
#  activity   :string(255)
#  value      :float
#  unit       :string(255)
#  completed  :date
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Exercise < ActiveRecord::Base
  attr_accessible :activity, :value, :unit, :completed
  belongs_to :user, :inverse_of => :exercises
end
