# AcademicRank
This is Academic Rank, my first Ruby on Rails project.<br/>
It is a basic system where you can create, read and update (delete action it's not available yet ): ) scores of a university which represent its ENADE performance. <br/>

To run this application, you must have nodejs(v4.2.6), Bundler (v1.11.2), ruby (v2.3.1p112) and rails(v4.2.6) installed<br/>
`$	sudo apt-get install nodejs`
`$	sudo apt-get install bundler`
`$	sudo apt-get install ruby-full`


Clone this repository, go to the 'AcademicRank/' directory and execute rails' commands:<br/>
`$	bundle exec`
`$	rails server`

The application will start at <br/>
https://localhost:3000


To run all tests:<br/>
`$	rake test`

To run unit test:<br/>
`$	rake test:units`

Testing controllers:<br/>
`$	rake test:controllers`