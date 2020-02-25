class AuthorsController < ApplicationController

  def show
    @author = Author.find(params[:id])
  end

  # The below are unnecessary because the nestedness has been moved to the PostsController, where the nested route syntax used in routes.rb will send the request.

  # def posts_index
  #   @author = Author.find(params[:id])
  #   @posts = @author.posts
  #   render template: 'posts/index'
  # end

  # def post
  #   @author = Author.find(params[:id])
  #   @post = Post.find(params[:post_id])
  #   render template: 'posts/show'
  # end

end
