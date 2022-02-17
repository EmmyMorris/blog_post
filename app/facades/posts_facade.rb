class PostsFacade
  def self.get_post_data(tags, sortBy, direction)
    posts = PostService.get_posts(tags, sortBy, direction)
    all_posts = posts.first[1]
    post_results = format_posts(all_posts)
    details = format_details(post_results)
  end

  def self.format_posts(all_posts)
    all_posts.map do |post|
      {
           id: post[:id],
           author: post[:author],
           authorId: post[:authorId],
           likes: post[:likes],
           popularity: post[:popularity],
           reads: post[:reads],
           tags: post[:tags]
         }
    end
  end

  def self.format_details(post_results)
    {
      posts: post_results
    }
  end
end
