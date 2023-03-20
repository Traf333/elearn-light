class CreateUserLearningPaths < ActiveRecord::Migration[6.0]
  def change
    create_table :user_learning_paths, id: :uuid do |t|
      t.belongs_to :user, type: :uuid, null: false, foreign_key: true
      t.belongs_to :learning_path, type: :uuid, null: false, foreign_key: true

      t.timestamps
    end
  end
end
