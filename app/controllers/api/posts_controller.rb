class Api::PostsController < ApplicationController
  def index
    posts = PostsFacade.get_posts(params[:tags], params[:soryBy], params[:direction])
    render json: PostSerializer.new(posts), status: 200
  end
end
