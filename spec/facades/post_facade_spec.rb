require 'rails_helper'

RSpec.describe PostsFacade do
  describe 'class methods' do
    it 'returns post data and tags' do
      post = PostsFacade.get_post_data('tech','popularity', 'asc')
      expect(post.first[1].first[:id]).to be_an(Integer)
      expect(post.first[1].first[:author]).to be_a(String)
      expect(post.first[1].first[:authorId]).to be_an(Integer)
      expect(post.first[1].first[:likes]).to be_an(Integer)
      expect(post.first[1].first[:popularity]).to be_a(Float)
      expect(post.first[1].first[:reads]).to be_an(Integer)
      expect(post.first[1].first[:tags]).to be_an(Array)
    end
  end
end
