class Location
  include Mongoid::Document

  field :street
  field :city
  field :state
  field :zip

  embedded_in :restaurant, :inverse_of => :location
end
