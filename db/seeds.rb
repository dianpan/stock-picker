# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

col_data = []
CSV.foreach(File.dirname(__FILE__) + '/stocklist-all.csv', :headers => true) do |row|
  col_data << row.to_h
end

col_data.each do |hash|
  key, value = hash.first
  new_hash = {key => value}
  Stock.create!(new_hash)
end

