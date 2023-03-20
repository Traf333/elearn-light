class Course < ApplicationRecord
  has_many :user_courses, dependent: :delete_all
  has_many :talents, through: :user_courses, class_name: 'User'
  has_many :learning_path_courses, dependent: :delete_all
  has_many :learning_paths

  belongs_to :author, class_name: 'User'
end
