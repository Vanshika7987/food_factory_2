class RestaurantsController < ApplicationController

  def index 
    @restaurants = current_account.restaurants.approved_restaurants
  end

  def new 
    @restaurant = Restaurant.new
  end 
  
  def create
    @restaurant = current_account.restaurants.new(restaurant_owner)
    @restaurant.save
    # if @restaurant.save
    #   # // add mail functionality here 
    # else
    # end
  end

  def show
  end 


  private

  def restaurant_owner
    params.require(:restaurant).permit(:name)
  end
end
