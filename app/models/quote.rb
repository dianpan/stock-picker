class Quote < ActiveReocrd::Base
  self.primary_keys = :date, :stock_id
  validates_presence_of :date, :currency, :stock_id
  belongs_to :stock
end
