class Course < ApplicationRecord
  belongs_to :program
  has_and_belongs_to_many :students
  has_many :projects, through: :students
end
