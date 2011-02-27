class Section
  include Mongoid::Document

  field :name

  embeds_many :items
  embedded_in :restaurant, :inverse_of => :section
end
