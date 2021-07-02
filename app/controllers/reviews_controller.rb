class ReviewsController < ApplicationController
  def create
    @bike = Bike.find(params[:bike_id])
    @bike = Bike.new(review_params)
    @review.bike = @bike
    if @review.save
      redirect_to bike_path(@bike)
    else
      render 'bikes/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
