class PostsFacade
  def self.get_post_data(tags, sortBy, direction)
    posts = PostService.get_posts(tags, sortBy, direction)
    BookDetails.new(posts)
  end
end
