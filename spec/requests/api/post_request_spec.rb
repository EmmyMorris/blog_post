require 'rails_helper'

RSpec.describe "Post API" do

  context 'happy paths' do
    it 'Sends posts in tag field, and post attributes', :vcr do

      get "/api/posts?tags=tech&sortBy=popularity&direction=asc"

      body = JSON.parse(response.body, symbolize_names: true)
      expect(response).to be_successful
      expect(response.status).to be(200)
      expect(body).to have_key(:posts)
      expect(body[:posts]).to be_a(Array)
      expect(body[:posts][0]).to have_key(:id)
      expect(body[:posts][0][:id]).to be_a(Integer)
      expect(body[:posts][0]).to have_key(:author)
      expect(body[:posts][0][:author]).to be_a(String)
    end
  end
end
