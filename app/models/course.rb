class Course < ActiveRecord::Base
  has_many :lessons

  #explicit join
  has_many :progresses
  has_many :users, :through => :progresses
end
