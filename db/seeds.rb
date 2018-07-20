# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
University.destroy_all
Course.destroy_all

ufmg = University.create!({
		name: "UFMG",
		final_score: 77.6,
		
	})

usp = University.create!({
		name: "USP",
		final_score: 80.5,
	})

ufsj = University.create!({ 
		name: "UFSJ",
		final_score: 75.9,
	})

ufop = University.create!({ 
		name: "UFOP",
		final_score: 75.8,
	})

p "#{University.count} line(s) affected in datatable University."

Course.create(name: "Ciência da Computação", score:100, students_score: 81.2, universities_id:ufmg.id)
Course.create(name: "Odontologia", score: 98,  students_score: 85.8, universities_id:ufmg.id)
Course.create(name: "Artes Visuais", score:82.4 , students_score: 75.9, universities_id:ufsj.id)
Course.create(name: "Sistemas de Informação", score:92,  students_score: 83.1, universities_id:usp.id)
Course.create(name: "Engenharia Mecânica", score: 96,  students_score: 91.0, universities_id:usp.id)

p "#{Course.count} line(s) affected in datatable Course."