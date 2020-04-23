class AppointmentsController < ApplicationController
  def create
    appointment = Appointment.create!(
      user_id: params['user_id'],
      car_id: params['car_id'],
      date: params['date'],
      city: params['city'],
      car_name: params['car_name']
    )

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
end
