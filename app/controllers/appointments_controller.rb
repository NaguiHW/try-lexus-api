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
      }
    else
      render json: { status: 500 }
    end
  end

  def show
    appointments = Appointment.where(user_id: params[:id])

    render json: {
      appointments: appointments
    }
  end
end
