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
Skyscraper.destroy_all

csv_text = File.read(Rails.root.join("public", "cities.csv"))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  c = City.new
  c.name = row["name"]
  c.country = row["country"]
  c.save
  puts "#{c.name}, #{c.country} saved"
end

csv_text = File.read(Rails.root.join("public", "skyscrapers.csv")).encode!("UTF-8", "binary", invalid: :replace, undef: :replace, replace: "?")
csv = CSV.parse(csv_text, :headers => true, :encoding => "iso-8859-1:utf-8")
csv.each do |row|
  s = Skyscraper.new
  s.rank = row["rank"]
  s.name = row["name"]
  s.city = row["city"]
  s.country = row["country"]
  s.heightM = row["heightM"]
  s.heightF = row["heightF"]
  s.floors = row["floors"]
  s.completedYr = row["completedYr"]
  s.materials = row["materials"]
  s.use = row["use"]
  city = City.find_by(name: row["name"])
  s.city = city
  s.save
  puts "#{s.rank}, #{s.name}, #{s.city}, #{s.country}, #{s.heightM}, #{s.heightF}, #{s.floors}, #{s.completedYr}, #{s.materials}, #{s.use} saved"
end
