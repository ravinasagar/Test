class PostsController < ApplicationController
  before_action :set_user

  def index
    #binding.pry
    @posts = Post.all

  end

  def create
    @post=$current_user.posts.create(post_params)
  end

  def like
     @post = Post.find(params[:id])
     @like = @post.likes.where(user_id: $current_user.id).first_or_initialize
      if @post.likes.where(user_id: $current_user.id).present?
        @like.delete
      else
        @like.save
      end
  end

  def post_params
    params.require(:post).permit(:post)
  end
  
  def comment
    #binding.pry
    @post=Post.find(params[:id])
    @comment = @post.comments.where(user_id: $current_user.id).create(comment_params)  
  end

  def comment_like
    #binding.pry
    @comment=Comment.find(params[:id])
    @comment_like = @comment.likes.where(user_id: $current_user.id).first_or_initialize
    if @comment.likes.where(user_id: $current_user.id).present? 
      @comment_like.delete
    else 
      @comment_like.save
    end


  end

  def comment_params
    #binding.pry
    params.require(:comment).permit(:comment)
  end

  def set_user
    $current_user=User.third
  end
end
