class RankController < ApplicationController

	def index
		@universities = University.all
	end

end
