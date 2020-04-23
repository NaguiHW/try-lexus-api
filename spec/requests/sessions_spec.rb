require 'rails_helper'

RSpec.describe 'Sessions Controller' do
  let!(:user) { create(:user) }
  let(:valid_attributes) { { user: { email: user.email, password: user.password } } }
  let(:invalid_attributes) { { user: { email: 'doe@john.com', password: user.password } } }

  describe 'POST /sessions' do
    context 'when request attributes are valid' do
      before { post '/sessions', params: valid_attributes }

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when request attributes are invalid' do
      before { post '/sessions', params: invalid_attributes }

      it 'returns status code 401' do
        expect(response).to have_http_status(401)
      end
    end
  end

  describe 'GET /logged_in' do
    context 'when the user is not logged in' do
      before { get '/logged_in' }

      it 'has to be false' do
        expect(json['logged_in']).to be_falsey
      end

      it 'has to return status 401' do
        expect(response).to have_http_status(401)
      end
    end

    context 'when request attributes are invalid' do
      before { post '/sessions', params: valid_attributes }
      before { get '/logged_in' }

      it 'has to be true' do
        expect(json['logged_in']).to be_truthy
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end
  end

  describe 'DELETE /logout' do
    context 'logout the user' do
      before { post '/sessions', params: valid_attributes }
      before { delete '/logout' }

      it 'has to return status 200' do
        expect(response).to have_http_status(200)
      end
    end
  end
end
