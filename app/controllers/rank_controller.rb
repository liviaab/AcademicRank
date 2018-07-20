class RankController < ApplicationController

	def index
		@universities = University.order("final_score DESC")
	end

	def new_search
		@courses = Course.order("name ASC") 
		@universities = University.order("name ASC")
		@course = Course.new
		@university = University.new

		render '/rank/search'
	end

	def search_result
		
		@results = University
					.select("courses.*, universities.name as uni_name, universities.final_score")
					.joins("LEFT JOIN courses on universities.id = courses.universities_id")
					.where("universities.id = ? OR universities.final_score >= ? 
						OR courses.id = ? OR courses.score >= ? OR courses.students_score >= ? ", 
						params[:university_id], params[:university_score],
						params[:course_id], params[:course_score],params[:students_score])
					.order("universities.final_score DESC, courses.score DESC, students_score DESC ")
	end

	private
	def search_params
		params.permit(:university_id, :course_id, :university_score, :course_score, :students_score)
	end

end