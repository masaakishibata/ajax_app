class PostsController < ApplicationController
  def index
    @posts = Post.all.order(id: "DESC")
  end

  def create
    post = Post.create(content: params[:content], ckecked: false)
    render json:{ post: post }
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
