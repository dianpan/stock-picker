require 'json'
require 'net/http'

# Params:
# ticker: a string representing the stock ticker symbol
# startDate and endDate together represent the range of dates for which data should be fetched.
# startDate is required, endDate may be empty. If endDate is empty, the current system time will be used.
# startDate and endDate are both strings in the MM-DD-YYYY format.
# Returns an array of result objects with the following format:

def get_yql_data(ticker, startDate, endDate)
  url = "https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20yahoo.finance.historicaldata%20where%20symbol%20%3D%20%22#{ticker}%22%20and%20startDate%20%3D%20%22#{startDate}%22%20and%20endDate%20%3D%20%22#{endDate}%22&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys&callback="
  resp = Net::HTTP.get_response(URI.parse(url))
  result = JSON.parse(resp.body)
  return result
end

puts JSON.pretty_generate(get_yql_data("YHOO", "2015-01-01", "2015-08-26"))



