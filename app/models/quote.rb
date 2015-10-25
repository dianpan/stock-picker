class Quote < ActiveReocrd::Base
  self.primary_keys = :stock_id, :date
  validates_presence_of :date, :currency, :stock_id
  belongs_to :stock
end
