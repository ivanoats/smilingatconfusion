# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
["Elliott Smith", "The Beatles", "Radiohead", "Sun Kil Moon"].each do |artist|
  Artist.find_or_create_by_name(artist)
end

["From a Basement on the Hill", "unreleased", "covers", "self titled", "Com Lag"].each do |album|
  Album.find_or_create_by_name(album)
end

standard_tuning = Tuning.find_or_create_by_name("Standard E")
standard_tuning.update(notes: "EADGBE")
dropd_tuning = Tuning.find_or_create_by_name("Drop D")
dropd_tuning.update(notes: "DADGBE")
standard_d_tuning = Tuning.find_or_create_by_name("Standard D")
standard_d_tuning.update(notes: "DGCFAD")
doubledropd = Tuning.find_or_create_by_name("Double Drop D")
doubledropd.update(notes: "DADGBD")
