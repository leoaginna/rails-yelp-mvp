class ReviewsController < ApplicationController

 
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @restaurant.reviews.new(review_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant), notice: 'Review was successfully created.'
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end

end

