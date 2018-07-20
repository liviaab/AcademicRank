require 'test_helper'

class UniversityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

	fixtures :universities
	def test_nil_university
	  univ = University.create
	  assert !univ.valid?, "University shouldn't be created"
	end

	def test_nil_university_name
	  univ = University.create(:name => "", :final_score => 78.5)
	  assert !univ.valid?, "University shouldn't be created"
	end

	def test_nil_university_score
	  univ = University.create(:name => "ABC")
	  assert !univ.valid?, "University shouldn't be created"
	end

	def test_uni_score_is_number
		univ = University.create(:name => "ABC", :final_score => "A")
	 	assert !univ.valid?, "University shouldn't be created"
	end
	
end
