class CarsController < ApplicationController
  def show
    cars = Car.where(car_type: params[:id])

    render json: {
      cars: cars
    }
  end
end
