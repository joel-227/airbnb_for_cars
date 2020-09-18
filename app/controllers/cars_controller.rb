class CarsController < ApplicationController
  
  def index
    @user = current_user
    @cars = Car.all.reject { |car| car.user == current_user }
  end

  def price_asc
    @user = current_user
    @cars = Car.all.reject { |car| car.user == current_user }
    @cars_price_asc = @cars.sort_by { |car| car.price }
  end

  def price_des
    @user = current_user
    @cars = Car.all.reject { |car| car.user == current_user }
    result = @cars.sort_by { |car| car.price }
    @cars_price_des = result.reverse
  end

  def age_asc
    @user = current_user
    @cars = Car.all.reject { |car| car.user == current_user }
    @cars_age_asc = @cars.sort_by { |car| car.age }
  end

  def age_des
    @user = current_user
    @cars = Car.all.reject { |car| car.user == current_user }
    result = @cars.sort_by { |car| car.age }
    @cars_age_des = result.reverse
  end

  def show
    @car = Car.find(params[:id])
    if @car.user == current_user
      redirect_to my_car_path(@car)
    else
      @bookings = Booking.all.filter { |booking| booking.car == @car }
      @bookings.each do |booking|
        if booking.user == current_user
          @current_user_has_booked = true
          break
        end
      end
    end
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    if @car.save
      redirect_to my_cars_path
    else
      render :new
    end
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    @car.update(car_params)

    redirect_to my_cars_path
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    
    redirect_to my_cars_path
  end

  def my_cars
    @user = current_user
    @cars = Car.all.filter { |car| car.user == @user}
  end

  def my_cars_show
    @user = current_user
    @car = Car.find(params[:id])
  end

  private

  def car_params
    params.require(:car).permit(:price, :model, :license, :age, :image_url)
  end
end
