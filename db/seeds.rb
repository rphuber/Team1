# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

tiyers = Tiyer.create([
  {first_name: 'Bob', last_name: 'Smith', github: 'aUserName', tiy_type: 'Student'},
  {first_name: 'Mary', last_name: 'Jones', github: 'aUserName', tiy_type: 'Instructor'},
  {first_name: 'Jane', last_name: 'Doe', github: 'aUserName', tiy_type: 'Student'},
  {first_name: 'Dick', last_name: 'Richards', github: 'aUserName', tiy_type: 'Student'},
  {first_name: 'Nigel', last_name: 'Williams', github: 'aUserName', tiy_type: 'Instructor'},
  {first_name: 'Chip', last_name: 'Lennon', github: 'aUserName', tiy_type: 'Student'},
  {first_name: 'Zeke', last_name: 'Jagger', github: 'aUserName', tiy_type: 'Instructor'},
  {first_name: 'Stuart', last_name: 'McCartney', github: 'aUserName', tiy_type: 'Student'},
  {first_name: 'Jeeves', last_name: 'Plant', github: 'aUserName', tiy_type: 'Alumni'},
  {first_name: 'Eddie', last_name: 'Page', github: 'aUserName', tiy_type: 'Student'},
  {first_name: 'Sam', last_name: 'Townsend', github: 'aUserName', tiy_type: 'TA'},
  {first_name: 'James', last_name: 'Chippendale', github: 'aUserName', tiy_type: 'Alumni'},
  {first_name: 'Christina', last_name: 'Gibson', github: 'aUserName', tiy_type: 'Student'},
  {first_name: 'Mandy', last_name: 'Fender', github: 'aUserName', tiy_type: 'Alumni'},
  {first_name: 'David', last_name: 'Martin', github: 'aUserName', tiy_type: 'TA'},
  {first_name: 'Christopher', last_name: 'Robins', github: 'aUserName', tiy_type: 'Student'},
  {first_name: 'Toland', last_name: 'Sams', github: 'aUserName', tiy_type: 'Instructor'},
  {first_name: 'Reeve', last_name: 'Sams', github: 'aUserName', tiy_type: 'TA'},
  {first_name: 'Chuck', last_name: 'Liddel', github: 'aUserName', tiy_type: 'Student'},
  {first_name: 'Timmy', last_name: 'Tim', github: 'aUserName', tiy_type: 'Alumni'}
  ])