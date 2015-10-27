class FetchersController < ApplicationController
  def index
  end

  def yql(query)
    uri = "http://query.yahooapis.com/v1/public/yql"

    # everything's requested via POST, which is all I needed when I wrote this
    # likewise, everything coming back is json encoded
    response = Net::HTTP.post_form( URI.parse( uri ), {
      'q' => query,
      'format' => 'json'
    } )

    json = JSON.parse( response.body )
    return json
  end
end