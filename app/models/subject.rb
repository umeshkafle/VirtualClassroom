class Subject < ApplicationRecord

	belongs_to :course
	has_many :uploads
	has_many :lecturers

	enum student_class: [:computing, :networking, :multimedia, :bba]

end
