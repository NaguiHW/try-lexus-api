class AppointmentsController < ApplicationController
  def create
    appointment = Appointment.create!(create_params)

    if appointment
      render json: {
        appointment: appointment
      }, status: 201
    else
      render json: {
        error: 'Some of the fields are blank.'
      }, status: 422
    end
  end

  def show
    appointments = Appointment.where(car_id: params[:id])

    if !appointments.empty?
      render json: {
        appointments: appointments
      }
    else
      render json: {
        error: "Couldn't find the appointments"
      }, status: 404
    end
  end

  private

  def create_params
    params.permit(:user_id, :car_id, :date, :city, :car_name)
  end
end
