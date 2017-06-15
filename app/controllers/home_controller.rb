class HomeController < ApplicationController
  def index
    @posts = Post.all.reverse
  end

  def create
    Post.create(title: params[:title], content: params[:content],
                startdate: params[:startdate], lastdate: params[:lastdate],
                image: params[:image])
    redirect_to :root
  end

  def destroy
    des = Post.find(params[:id])
    des.destroy
    redirect_to :root
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    ud = Post.find(params[:id])
    ud.title = params[:title]
    ud.content = params[:content]
    ud.startdate = params[:startdate]
    ud.lastdate = params[:lastdate]
    ud.save
    redirect_to :root
  end


end
