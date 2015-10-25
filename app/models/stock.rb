class Stock < ActiveReocrd::Base
  validates_presence_of :symbol
  has_many :quotes
end
