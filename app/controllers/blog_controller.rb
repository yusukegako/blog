class BlogController < ApplicationController
  before_action :set_content, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]

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
  end
  
  def update
    content = Content.find(params[:id])
    content.update(content_params)
    redirect_to action: :index
  end
  
  def show
  end
  
  private
  def content_params
    params.require(:content).permit(:text)
  end
  
  def set_content
    @contents = Content.find(params[:id])
  end
  
  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

end