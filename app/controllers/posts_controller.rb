class PostsController < ApplicationController
  def index
    @posts = Post.all.order(id: "DESC")
  end

  def create
    Post.create(content: params[:content])
    redirect_to action: :index
  end

  def ckecked
    post = Post.find(params[:id])
    if post.ckecked
      post.update(ckecked: false)
    else
      post.upddate(ckecked: true)
    end

    item = Post.find(params[:id])
    render json: { post: item }
  end
end
