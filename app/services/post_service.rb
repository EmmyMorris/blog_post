class PostService
  def self.get_posts(tags, sortBy, direction)
    new.request_api("/assessment/blog/posts?tag=#{tags}&sortBy=#{sortBy}&direction=#{direction}")
  end

  def request_api(path)
    response = conn("https://api.hatchways.io").get(path)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn(url)
    Faraday.new(url)
  end
end
