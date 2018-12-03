class Student < ApplicationRecord
  has_and_belongs_to_many :courses
  has_and_belongs_to_many :projects
  has_and_belongs_to_many :tags
  # has_many :programs, through: :courses
  belongs_to :user
end
