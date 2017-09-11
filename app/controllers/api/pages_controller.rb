class Api::PagesController < ApiController
  def show
    id = params[:id]
    page = Page.find(id)
    render json: page
  end

  def index
    pages = Page.all
    render json: pages
  end

  def create
    page = Page.new(params[:page])
    page.save!
    render json: page
  end

  def update
    id = params[:id]
    page = Page.find(id)
    page.update(params[:page])
    render json: page
  end

  def destroy
    id = params[:id]
    page = page.find(id)
    page.destroy!
    render json: page
  end
end 
