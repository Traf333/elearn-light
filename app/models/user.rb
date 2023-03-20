class User < ApplicationRecord
  has_many :user_courses, dependent: :delete_all
  has_many :courses, through: :user_courses
  has_many :learning_paths

  validates :name, presence: true
end
