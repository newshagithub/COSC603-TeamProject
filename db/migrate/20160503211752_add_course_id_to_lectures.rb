class AddCourseIdToLectures < ActiveRecord::Migration
  def change
    add_reference :lectures, :course, index: true
    add_foreign_key :lectures, :courses
  end
end
