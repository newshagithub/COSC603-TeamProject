class LectureAddLessonIDfix < ActiveRecord::Migration
  def change
    add_column :lectures, :lesson_id_fix, :integer
  end
end
