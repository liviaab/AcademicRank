class UniversitiesController < ApplicationController
	def new
		@university = University.new
	end

	def create
		@university = University.new(uni_params)
		if @university.save
			redirect_to '/'
		else
			render 'new'
		end
	end
 
	private
		def uni_params
			params.require(:university).permit(:university_name, :final_score)
		end
end
