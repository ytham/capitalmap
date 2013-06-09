class Stock
  include Mongoid::Document
  attr_accessible :ticker

  field :ticker, type: String
  field :shares, type: Integer

  belongs_to :user
end
