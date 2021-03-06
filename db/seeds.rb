# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

symbol_data = []
CSV.foreach(File.dirname(__FILE__) + '/stocklist-all.csv', :headers => true) do |row|
  symbol_data << row.to_h
end

existing_stocks = Stock.all.map { |s| s.symbol }

symbol_data.each do |hash|
  key, value = hash.first
  new_hash = {key => value}
  unless existing_stocks.include?(value)
    Stock.create(new_hash)
  end
end

