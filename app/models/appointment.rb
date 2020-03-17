class Appointment < ApplicationRecord
  validates :car_id, :user_id, :date, :city, presence: true
  
  belongs_to :user
  belongs_to :car
end
