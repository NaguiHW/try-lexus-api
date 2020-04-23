class CarsController < ApplicationController
  def show
    cars = Car.where(car_type: params[:id])
    # json_response(cars)

    if !cars.empty?
      render json: {
        cars: cars
      }
    else
      render json: {
        error: "Couldn't find the cars with the specific type"
      }, status: 404
    end
  end

  def car
    car = Car.where(id: params[:id])

    if !car.empty?
      render json: {
        car: car
      }
    else
      render json: {
        error: "Couldn't find car"
      }, status: 404
    end
  end
end
