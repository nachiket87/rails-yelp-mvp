class ReviewsController < ApplicationController
  
  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    @review.save
     
  end

  private 

  def review_params
    params.require(:restaurant).permit(:rating, :content)
  end

end
