class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses, id: :uuid do |t|
      t.string :name
      t.belongs_to :author, type: :uuid, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
