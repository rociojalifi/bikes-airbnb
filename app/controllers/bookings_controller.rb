class BookingsController < ApplicationController

  def index
    @booking = Booking.where(user_id: current_user.id)
  end

  def show
    set_booking
    @bike = @booking.bike
  end

  def update
    set_booking
  end

  def destroy
    set_booking
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
    params.require(:booking).permit()
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
