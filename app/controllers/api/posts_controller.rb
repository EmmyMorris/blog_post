class Api::PostsController < ApplicationController
  def index
    if !params[:tags]
      render json: { "error": "Tags parameter is required"}, status: 400
    else @posts = PostsFacade.get_post_data(params[:tags], params[:soryBy], params[:direction])
      render json: @posts, status: 200
    end
  end
end
