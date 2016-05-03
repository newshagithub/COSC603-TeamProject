class Lecture < ActiveRecord::Base
  belongs_to :lesson
  belongs_to :course
  #explicit join
  has_many :progresses
  has_many :users, :through => :progresses
end
