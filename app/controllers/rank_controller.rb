class RankController < ApplicationController

	def index
		@universities = University.order("final_score DESC")
	end
end
