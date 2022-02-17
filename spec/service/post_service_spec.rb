require 'rails_helper'

RSpec.describe PostService do

  describe 'class methods' do
    it 'can connect to the Post API' do
      tag = "tech"
      sortBy = "popularity"
      direction = "asc"
      response = PostService.get_posts(tag, sortBy, direction)
      expect(response).to be_a(Hash)
      expect(response[:posts].length).to eq(28)
      expect(response[:posts].first[:id]).to eq(1)
      expect(response[:posts].first[:authorId]).to eq(9)
      expect(response[:posts].first[:tags]).to eq(["tech", "health"])
    end
  end
end
