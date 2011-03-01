class SectionsController < ApplicationController
  def index
    @sections = Restaurant.first(:conditions => {:id => params[:restaurant_id]}).sections
  end

  def create
    @restaurant = Restaurant.first(:conditions => {:id => params[:restaurant_id]})

    @restaurant.sections << Section.new(params[:section])

    @restaurant.save

    redirect_to restaurant_path(@restaurant)
  end
end
