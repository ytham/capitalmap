class Stock
  include Mongoid::Document
  attr_accessible :ticker

  field :ticker, type: String

  belongs_to :user
end
