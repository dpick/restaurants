class SectionsController < ApplicationController
  def index
    @sections = Restaurant.first(:conditions => {:id => params[:restaurant_id]}).sections
  end
end
