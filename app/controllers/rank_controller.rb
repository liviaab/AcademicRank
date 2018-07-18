class RankController < ApplicationController

	def index
		@universities = University.all
	end

	def new
		@university = University.new
	end

	def create
		@university = University.new(params)
		if @university.save
			redirect_to '/rank'
		else
			render 'new'
		end
	end
 
	private
		def params
			params.require(:university).permit(:university_name, :final_score)
		end

end
