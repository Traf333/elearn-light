class CreateLearningPaths < ActiveRecord::Migration[6.0]
  def change
    create_table :learning_paths, id: :uuid do |t|
      t.string :name

      t.timestamps
    end
  end
end
