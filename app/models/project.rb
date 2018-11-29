class Project < ApplicationRecord
  has_and_belongs_to_many :students
  #   has_many :courses, through: :students

end
