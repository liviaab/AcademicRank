class CoursesController < ApplicationController

	def new
		@course = Course.new
		@message = ''
	end

	def show
		@course = Course.find(params[:id]) 		
	end

	def by_courses
		@courses = Course.order("score DESC")
	end

	def by_students
		@courses = Course.order("students_score DESC")
	end

	def update
		@course = Course.find(params[:id])
		if @course.update(course_params)
			redirect_to '/'
		else
			render 'show'
		end
	end


	def create
		@course = Course.new(course_params)
		if @course.save
			@message = "Record created."
			redirect_to '/'
		else
			@message = "Error. Possible Causes: Missing parameter or there is a course registered under that name in that university."
			render 'new'
		end
	end
 
	private
		def course_params
			params.require(:course).permit(:name, :score, :students_score, :universities_id)
		end
end
