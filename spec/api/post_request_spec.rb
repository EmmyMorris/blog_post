require 'rails_helper'

RSpec.describe "Post API" do

  context 'happy paths' do
    it 'Sends posts in tag field, and post attributes', :vcr do

      get "/api/posts?tags=tech,co&sortBy=popularity&direction=asc"

      body = JSON.parse(response.body, symbolize_names: true)

      expect(response).to be_successful
    end
  end
end
