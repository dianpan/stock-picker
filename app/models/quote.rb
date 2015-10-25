class Quote < ActiveReocrd::Base
  validates_presence_of :date, :currency, :stock_id
  belongs_to :stock
end
