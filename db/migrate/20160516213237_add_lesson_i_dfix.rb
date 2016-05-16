class AddLessonIDfix < ActiveRecord::Migration
  def change
    add_column :lessons, :lesson_id_fix, :integer
  end
end
