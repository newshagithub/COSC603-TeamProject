class Lecture < ActiveRecord::Base
  belongs_to :lesson
  #explicit join
  has_many :progresses
  has_many :users, :through => :progresses
end
