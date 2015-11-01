require 'csv'

symbol_data = []
CSV.foreach(File.dirname(__FILE__) + '/stocklist-all.csv', :headers => true) do |row|
  symbol_data << row.to_h
end

symbol_data.each do |hash|
  key, value = hash.first
  new_hash = {key => value}
  Stock.create(new_hash)
end

