require 'rails_helper'

RSpec.describe "Ping API" do

  context 'happy paths' do
    it 'Sends successfull response', :vcr do

      get "/api/ping"

      body = JSON.parse(response.body, symbolize_names: true)

      expect(response).to be_successful
      expect(response.status).to be(200)
      expect(body).to have_key(:success)
      expect(body[:success]).to eq("true")
    end
  end
end
