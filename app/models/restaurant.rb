class Restaurant
  include Mongoid::Document

  field :name
  validates_presence_of :name
  validates_uniqueness_of :name, :case_sensitive => false
  attr_accessible :name

  embeds_many :locations
  embeds_many :sections
end
