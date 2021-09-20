class BlogController < ApplicationController

  def index
    @blog = Content.all.order("created_at DESC")
  end
  
  def new
    @contents = Content.new
  end
  
  def create
    Content.create(content_params)
    redirect_to action: :index
  end
  
  def destroy
    content = Content.find(params[:id])
    content.destroy
    redirect_to action: :index
  end
  
  def edit
    @contents = Content.find(params[:id])
  end
  
  def update
    content = Content.find(params[:id])
    content.update(content_params)
    redirect_to action: :index
  end
  
  private
  def content_params
    params.require(:content).permit(:text)
  end

end