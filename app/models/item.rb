class Item
  include Mongoid::Document

  field :name
  field :price, :type => Float

  embedded_in :section, :inverse_of => :item
end
