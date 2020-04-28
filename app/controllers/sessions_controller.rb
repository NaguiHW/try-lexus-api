class SessionsController < ApplicationController
  include CurrentUserConcern
  def create
    user = User.find_by(email: params['user']['email']).try(:authenticate, params['user']['password'])

    if user
      session[:user_id] = user.id
      render json: {
        status: :created,
        logged_in: true,
        user: user
      }, status: 201
    else
      render json: { status: 401 }, status: 401
    end
  end

  def logged_in
    if @current_user
      render json: {
        logged_in: true,
        user: @current_user
      }, status: 201
    else
      render json: {
        logged_in: false
      }, status: 401
    end
  end

  def logout
    reset_session
    render json: {
      status: 200,
      logged_out: true
    }
  end
end
