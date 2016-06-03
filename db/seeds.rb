# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# City.create([{name: "New York", country: "USA"}, {name: "Chicago", country: "USA"}, {name: "Shanghai", country: "China"}])

require "csv"

City.destroy_all


csv_text = File.read(Rails.root.join("public", "cities.csv"))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  c = City.new
  c.name = row["name"]
  c.country = row["country"]
  c.save
  puts "#{c.name}, #{c.country} saved"
end
