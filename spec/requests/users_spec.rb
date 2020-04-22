require 'rails_helper'

RSpec.describe 'Registrations Controller' do
  describe 'POST /registrations' do
    let(:valid_attributes) { { user: {first_name: 'John', last_name: 'Doe', email: 'john@doe.com', password: '123456', password_confirmation: '123456'} } }

    context 'when request attributes are valid' do
      before { post "/registrations", params: valid_attributes }

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end
  end
end