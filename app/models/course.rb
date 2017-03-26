class Course < ApplicationRecord

	has_many :subjects
	has_many :lecturers, through: :subjects
end
