class RestaurantsController < ApplicationController
  
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_method

  def index
    restaurants = Restaurant.all
    render json: restaurants, adapter: nil 
  end

  def show
    restaurant = find_restaurant
    render json: restaurant, serializer: IndividualRestaurantSerializer
  end

  def destroy
    restaurant = find_restaurant
    restaurant.destroy
    render json: restaurant, status: :no_content
  end

  private

  def find_restaurant
    Restaurant.find(params[:id])
  end

  def record_not_found_method
    render json: {error: "Restaurant not found"}, status: :not_found
  end
end
