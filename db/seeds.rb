# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
University.destroy_all

University.create!([
	{
		university_name: "UFMG",
		final_score: 77.6
	},
	{
		university_name: "USP",
		final_score: 80.5
	}])

p "#{University.count} line(s) affected."