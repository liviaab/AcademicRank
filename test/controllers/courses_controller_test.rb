require 'test_helper'

class CoursesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
	fixtures :courses, :universities

	test "should get new course" do
	  get :new
	  assert_response :success	  
	end

	# test "should get show course" do		
	#   get(:show, {'id' => '1'})
	#   assert_response :success	  
	# end

	# test "should get list by course score" do
	#   get :by_courses 
	#   assert_not_nil assigns(:courses)
	#   assert_response :success
	# end

end
