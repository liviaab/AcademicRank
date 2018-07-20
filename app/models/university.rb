class University < ActiveRecord::Base
	has_many :courses
	validates :name, presence: true, uniqueness: true
	validates :final_score, presence: true
	validates_numericality_of :final_score
end
