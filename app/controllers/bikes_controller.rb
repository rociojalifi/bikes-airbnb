class BikesController < ApplicationController
  def index
    @bikes = Bike.new
  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params)
    @bike.user = current_user
    if @bike.save
      redirect_to bike_path(@bike)
    else
      render :new
    end
  end
  
  def show
    set_bike
  end

  def edit 
    set_bike
  end

  def update 
    set_bike
    @bike.update(bike_params)
    redirect_to bike_path(@bike)
  end

  def destroy
    set_bike
    @bike.destroy
    redirect_to root_path
  end

  private
  def bike_params
    params.require(:bike).permit(:model, :photo, :description, :price)
  end

  def set_bike
    @bike = Bike.find(params[:id])
  end
end
