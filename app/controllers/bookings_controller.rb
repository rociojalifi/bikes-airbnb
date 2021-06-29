class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  skip_after_action :verify_policy_scoped, only: :index
  before_action :set_booking, only: [:show, :update, :destroy]
  before_action :set_bike, only [:new, :create]

  def index
    @booking = current_user.bookings
  end

  def show
    authorize @booking
    @bike = @booking.bike
  end

  def update
  end


  def destroy
    authorize @booking
    @booking.destroy
    redirect_to root_path
  end

  def new
    @booking = Booking.new
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

  def set_bike
    @bike = Bike.find(params[:id])
  end
end
