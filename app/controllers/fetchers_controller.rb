require 'rubygems'
require 'yql'

class FetchersController < ApplicationController
  def index
    @yahoo = fetch('YHOO', '2009-09-11', '2010-09-13')
  end
end