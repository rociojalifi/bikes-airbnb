class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  before_action :set_booking, only: [:show, :edit, :update, :destroy]
  before_action :set_bike, only: [:new, :create]

  def show
    authorize @booking
    @bike = @booking.bike
  end

  def new
    @booking = Booking.new
  end

  def create
    @bike = Bike.find(params[:bike_id])
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.bike = @bike
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      redirect_to bike_path(@bike)
    end
  end

  def edit
    authorize @booking
  end

  def update
    authorize @booking
    if @booking.update(booking_params)
      redirect_to my_bikes_path
      else
        render :edit
      end
  end


  def destroy
    authorize @booking
    @booking.destroy
    redirect_to root_path
  end

  private
  def booking_params
    params.require(:booking).permit(:pick_up, :drop_off)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_bike
    @bike = Bike.find(params[:bike_id])
  end
end
