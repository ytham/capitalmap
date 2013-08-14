class Research
  include Mongoid::Document

  field :title, type: String
  field :comment, type: String
  field :tableau, type: String

  validates_presence_of :title
  validates_presence_of :tableau

end
