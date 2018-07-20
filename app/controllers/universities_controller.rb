class UniversitiesController < ApplicationController
	def new
		@university = University.new
	end

	def show 
		@university = University.find(params[:id]) 
		@courses = @university.courses 
	end

	def edit
		@university = University.find(params[:id])
	end

	def update
		@university = University.find(params[:id])
		if @university.update(uni_params)
			redirect_to '/'
		else
			render 'show'
		end
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
