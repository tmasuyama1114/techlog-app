require 'rails_helper'

RSpec.describe 'Home', type: :request do
  describe 'GET /home/top' do
    it 'HTTPステータス200を返す' do
      get '/home/top'
      expect(response).to have_http_status(200)
    end
  end
end
