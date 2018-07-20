class Course < ActiveRecord::Base
	belongs_to :university, foreign_key: true
	validates :name, presence: true, uniqueness:  { scope: :universities_id,
    message: "Should exist one course per university." }
	validates_associated :university
end
