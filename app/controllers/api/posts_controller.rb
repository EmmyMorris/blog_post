class Api::PostsController < ApplicationController
  def index
    if !params[:tag]
      render json: { "error": "Tags parameter is required"}, status: 400
    elsif params_not_valid(params[:soryBy], params[:direction])
    else @posts = PostsFacade.get_post_data(params[:tag], params[:soryBy], params[:direction])
      render json: @posts, status: 200
    end
  end

  private

  def params_not_valid(soryBy, direction)
    if soryBy != ("id" || "reads" || "likes" || "popularity") || :direction != ("asc" || "desc")
      render json: { "error": "sortBy parameter is invalid" }
    end
  end
end
