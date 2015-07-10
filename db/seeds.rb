# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Forum.delete_all 

forums = Forum.create([
		{ name: 'ixNews' , description: 'News about iX' },
		{ name: 'Projects' , description: 'Post about projects you are working on' },
		{ name: 'Miscellaneous' , description: 'Anything you want!' }
		])

