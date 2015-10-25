class Fetcher < ActiveRecord::Base
  def fetch(symbol, startDate, endDate)
    yql = Yql::Client.new
    query = Yql::QueryBuilder.new 'yahoo.finance.historicaldata'
    query.conditions = {:symbol => symbol, :startDate => startDate, :endDate => endDate}
    yql.query = query
    yql.format = json
    response = yql.get
    response.show.to_s
  end
end