# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

more_activities = [
  {:title => 'cooking room', :description => 'lesson1',
    :release_date => '25-Nov-2012'},
  {:title => 'cooking room', :description => 'lesson2',
    :release_date => '21-Jul-2012'},
  {:title => 'japanese song', :description => 'lesson1',
    :release_date => '10-Aug-2012'},
  {:title => 'japanese song', :description => 'lesson2',
    :release_date => '12-Jun-2012'}
]
# NOTE: the following line temporarily allows mass assignment
# (needed if you used attr_accessible/attr_protected in movie.rb)
Activity.send(:attr_accessible, :title, :description, :release_date)
more_activities.each do |activity|
  Activity.create!(activity)
end

