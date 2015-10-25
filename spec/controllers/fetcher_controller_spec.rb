require 'rails_helper'

describe FetcherController do
  context '#fetch' do
    it 'fetches data from yql' do
      expect(fetch('YHOO', '2009-09-11', '2010-09-13')).to be_success
    end
  end
end