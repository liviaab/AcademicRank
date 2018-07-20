class Course < ActiveRecord::Base
	belongs_to :university, foreign_key: true
end
