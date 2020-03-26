require 'rails_helper'

RSpec.describe 'Status Requests' do
  describe 'GET /logged_in' do
    it 'Returns false' do
      get('/logged_in')
      json = JSON.parse(response.body)
      expect(json['logged_in']).to eql(false)
    end
  end
end