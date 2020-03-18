class Appointment < ApplicationRecord
  validates :user_id, :car_id, :date, :city, :car_name, presence: true

  belongs_to :user
  belongs_to :car
end
