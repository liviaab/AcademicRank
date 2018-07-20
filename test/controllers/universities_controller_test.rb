require 'test_helper'

class UniversitiesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
	fixtures :courses, :universities
	test "should get new university" do
	  get :new
	  assert_response :success	  
	end

	# test "should get show university" do
	#   get(:show, {'id' => '1'})
	#   assert_response :success	  
	# end
end
