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

