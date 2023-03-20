class CreateLearningPathCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :learning_path_courses, id: :uuid do |t|
      t.belongs_to :learning_path, type: :uuid, null: false, foreign_key: true
      t.belongs_to :course, type: :uuid, null: false, foreign_key: true
      t.integer :step, null: false

      t.timestamps
    end
  end
end
