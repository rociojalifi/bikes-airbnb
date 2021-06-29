class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :update, :destroy]

  def index
    @booking = Booking.where(user_id: current_user.id)
  end

  def show
    @bike = @booking.bike
  end

  def update
  end


  def destroy
    @booking.destroy
    redirect_to root_path
  end

  def create
    @bike = Bike.find(params[:bike_id])
    @booking = Booking.new(booking_params)
    @booking.bike = @bike
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      redirect_to bike_path(@bike)
    end
  end

  private
  def booking_params
    params.require(:booking).permit(:pick_up, :drop_off)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
