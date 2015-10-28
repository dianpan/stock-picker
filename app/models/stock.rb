class Stock < ActiveRecord::Base
  validates_presence_of :symbol
  has_many :quotes
end
