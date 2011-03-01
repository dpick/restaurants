class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new

    respond_to do |format|
      format.html
      format.xml { render :xml => @restaurant }
    end
  end

  def show
    @restaurant = Restaurant.first(:conditions => {:id => params[:id]})

    respond_to do |format|
      format.html
      format.xml { render :xml => @restaurant }
    end
  end

  def update

  end

  def create
    @restaurant = Restaurant.new(params[:restaurant])

    respond_to do |format|
      if @restaurant.save
        format.html { redirect_to(@restaurant,
                                  :notice => 'Restaurant was successfully created.') }
        format.xml  { render :xml => @restaurant,
          :status => :created, :location => @restaurant }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @restaurant.errors,
          :status => :unprocessable_entity }
      end
    end
  end
end
