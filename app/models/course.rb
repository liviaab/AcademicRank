class Course < ActiveRecord::Base
	belongs_to :university, foreign_key: true
	validates :score, :students_score, :universities_id, presence: true
	validates :name, presence: true, uniqueness:  { scope: :universities_id}
	validates_associated :university
	validates_numericality_of :score, :students_score, :universities_id
end
