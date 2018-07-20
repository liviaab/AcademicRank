require 'test_helper'

class RankControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

	fixtures :courses, :universities
	test "should get index" do
	  get :index
	  assert_response :success
	  assert_not_nil assigns(:universities)
	end

	test "should get search" do
	  get :new_search
	  assert_response :success	  
	end

end
