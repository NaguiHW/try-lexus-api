require 'rails_helper'

RSpec.describe Car, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:price) }
  it { should validate_presence_of(:car_type) }
  it { should validate_presence_of(:image) }
end
