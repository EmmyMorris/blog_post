class Api::PostsController < ApplicationController
  def index
    posts = PostsFacade.get_post_data(params[:tags], params[:soryBy], params[:direction])
    render json: PostSerializer.new(posts), status: 200
  end
end
