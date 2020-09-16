class BookingsController < ApplicationController
  def new
    @car = Car.find(params[:car_id])
    booking_check = Booking.all.filter { |booking| booking.user == current_user}
    if booking_check == []
      @booking = Booking.new
      @car = Car.find(params[:car_id])
      @booking.car = @car
    else
      redirect_to car_path(@car)
    end
  end

  def create
    @car = Car.find(params[:car_id])
    @booking = Booking.new(booking_params)
    @booking.car = @car
    @booking.user = current_user
    if @booking.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @car = @booking.car
    if @booking.user == current_user
      @booking.destroy
    end

    redirect_to car_path(@car)
  end

  private
  
  def booking_params
    params.require(:booking).permit(:start_time, :end_time)
  end
end
