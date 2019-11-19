class BlogsController < ApplicationController
  before_action :move_to_index, except: :index
  def index
    @blogs = Blog.all.order("id DESC")
  end

  def new
  end

  def create
    Blog.create(blog_params)
  end

  def edit
    @blog = Blog.find(params[:id])

  def destroy
    blog = Blog.find(params[:id])
    blog.destroy if blog.user_id === current_user.id
  private
  def blog_params
    params.permit(:title, :image, :content)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
