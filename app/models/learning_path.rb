class LearningPath < ApplicationRecord
  has_many :learning_path_courses, dependent: :delete_all
  has_many :courses, through: :learning_path_courses, order: :step
end
