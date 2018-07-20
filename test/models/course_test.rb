require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
	fixtures :courses, :universities
	def test_nil_course
	  course = Course.create
	  assert !course.valid?, "Course shouldn't be created"
	end

	def test_nil_course_name
	  course = Course.create(:name => "", :score => 78.5, :students_score => 80.1, universities_id: 1)
	  assert !course.valid?, "Course shouldn't be created"
	end

	def test_nil_course_score
	  course = Course.create(:name => "ABC", :students_score => 80.1, universities_id: 1)
	  assert !course.valid?, "Course shouldn't be created"
	end

	def test_nil_students_score
	  course = Course.create(:name => "ABC", :score => 78.5, universities_id: 1)
	  assert !course.valid?, "Course shouldn't be created"
	end

	def test_nil_course_and_score
	  course = Course.create(:name => "ABC", universities_id: 1)
	  assert !course.valid?, "Course shouldn't be created"
	end

	def test_nil_course_and_students_score
	  course = Course.create(:name => "",:score => 78.5, universities_id: 1)
	  assert !course.valid?, "Course shouldn't be created"
	end

	def test_nil_university_fk
		course = Course.create(:name => "ABC", :score => 78.5, :students_score => 80.1 )
		assert !course.valid?, "Course shouldn't be created"
	end

	def test_has_foreign_key
		course = Course.create(:name => "ABC", :score => 78.5, :students_score => 80.1, universities_id: 1)
		assert course.valid?
	end

	def test_score_is_number
		course = Course.create(:name => "ABC", :score => "a", :students_score => 80.1, universities_id: 1)
		assert !course.valid?, "Course shouldn't be created"
	end

	def test_students_score_is_number
		course = Course.create(:name => "ABC", :score => 78.5, :students_score => "a", universities_id: 1)
		assert !course.valid?, "Course shouldn't be created"
	end

	def test_uni_id_is_number
		course = Course.create(:name => "ABC", :score => 78.5, :students_score => 80, universities_id: "a")
		assert !course.valid?, "Course shouldn't be created"
	end

end
