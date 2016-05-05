class Lesson < ActiveRecord::Base
  belongs_to :course
  has_many :lectures

  #explicit join
  has_many :progresses
  has_many :users, :through => :progresses
end
