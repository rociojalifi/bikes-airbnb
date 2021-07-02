class ReviewsController < ApplicationController
  def create
    @bike = Bike.find(params[:bike_id])
    @review = Review.new(review_params)
    @review.bike = @bike
    authorize @review
    if @review.save
      redirect_to bike_path(@bike, anchor: "review-#{@review.id}")
    else
      render 'bikes/show'
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    authorize @review
    redirect_to bike_path(@review.bike.id)
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
