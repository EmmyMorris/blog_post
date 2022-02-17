require 'rails_helper'

RSpec.describe PostsFacade do
  describe 'class methods' do
    it 'returns post data and tags' do
      post = PostsFacade.get_posts('tech','popularity', 'asc')

      expect(post).to be_a PostDetails
      
      expect(post.id).to be_an(Integer)
      expect(post.author).to be_a(String)
      expect(post.authorId).to be_an(Integer)
      expect(post.likes).to be_an(Integer)
      expect(post.popularity).to be_an(Integer)
      expect(post.reads).to be_an(Integer)
      expect(post.tags).to be_an(Array)
    end
  end
end
