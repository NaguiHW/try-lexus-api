require 'rails_helper'

RSpec.describe 'Cars Requests' do
  describe 'GET /cars' do
    it 'Returns cars of one type' do
      get('/cars/SEDAN')
      json = JSON.parse(response.body)
      expect(json['cars']).to eql([])
    end
  end
end