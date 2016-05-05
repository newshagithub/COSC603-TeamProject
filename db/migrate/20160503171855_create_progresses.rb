class CreateProgresses < ActiveRecord::Migration
  def change
    create_table :progresses do |t|
      t.references :user, index: true, foreign_key: true
      t.references :course, index: true, foreign_key: true
      t.references :lesson, index: true, foreign_key: true
      t.references :lecture, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
