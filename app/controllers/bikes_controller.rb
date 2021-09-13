class BikesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_bike, only: [:show, :edit, :update, :destroy]
  def index
    if params[:query].present?
      @bikes = policy_scope(Bike).where("location ILIKE ?", "%#{params[:query]}%")
        @markers = @bikes.geocoded.map do |bike|
          {
            lat: bike.latitude,
            lng: bike.longitude,
            info_window: render_to_string(partial: "info_window", locals: { bike: bike }),
          }
        end
    else
      @bikes = policy_scope(Bike).order(created_at: :desc)
        @markers = @bikes.geocoded.map do |bike|
          {
            lat: bike.latitude,
            lng: bike.longitude,
            info_window: render_to_string(partial: "info_window", locals: { bike: bike }),
          }
        end
    end
    puts @markers
  end

  def new
    @bike = Bike.new
    authorize @bike
  end

  def create
    @bike = Bike.new(bike_params)
    @bike.user = current_user
    authorize @bike
    if @bike.save
      redirect_to bikes_path
    else
      render :new
    end
  end
  
  def show
    @booking = Booking.new
    @bike = Bike.find(params[:id])
    @review = Review.new 
  end

  def edit 
  end

  def update
    if @bike.update(bike_params)
    redirect_to bikes_path
    else
      render :edit
    end
  end

  def destroy
    if @bike.destroy
    redirect_to bikes_path(@bike)
    else
      render :index
    end
  end

  def my_bikes
    @my_bikes = current_user.bikes
    authorize @my_bikes
  end

  private
  def bike_params
    params.require(:bike).permit(:photo, :description, :price, :location)
  end

  def set_bike
    @bike = Bike.find(params[:id])
    authorize @bike
  end
end
