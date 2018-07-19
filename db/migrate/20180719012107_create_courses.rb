class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
    	t.string		:name
    	t.float			:score
    	t.float			:students_score
    	t.references	:universities
		t.timestamps null: false
    end
  end
end
