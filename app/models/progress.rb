class Progress < ActiveRecord::Base
  belongs_to :user
  belongs_to :course
  belongs_to :lesson
  belongs_to :lecture
end
