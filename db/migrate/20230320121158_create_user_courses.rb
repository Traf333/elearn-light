class CreateUserCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :user_courses, id: :uuid do |t|
      t.belongs_to :user, type: :uuid, null: false, foreign_key: true
      t.belongs_to :course, type: :uuid, null: false, foreign_key: true
      t.timestamp :completed_at

      t.timestamps
    end
  end
end
