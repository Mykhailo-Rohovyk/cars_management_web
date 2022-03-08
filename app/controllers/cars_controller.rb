class CarsController < ApplicationController

  def index
   @cars = FindCar.new.call(search_params)
   @total_count = @cars.length
   # @cars.order(price: :asc)
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new cars_params
    if @car.save
      redirect_to cars_path
    else
      render :new
    end
  end

  def edit
    @car = Car.find_by id: params[:id]
  end

  def update
    @car = Car.find_by id: params[:id]
    if @car.update cars_params
      redirect_to cars_path
    else
      render :edit
    end
  end

  def destroy
    @car = Car.find_by id: params[:id]
    @car.destroy
    redirect_to cars_path
  end

  def show
    @car = Car.find_by id: params[:id]
  end

  private

  def cars_params
    params.require(:car).permit(:make, :model, :year, :odometer, :price, :description)
  end

  def search_params
    params.permit(:make, :model, :year_from, :year_to, :price_from, :price_to, :sort_type, :sort_direction)
  end
end
