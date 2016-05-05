class AddAnswerOptionsToLectures < ActiveRecord::Migration
  def change
    add_column :lectures, :quizOptions, :string
  end
end
