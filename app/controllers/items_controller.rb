class ItemsController < ApplicationController
  def index
    @items = Item.all
    render :index
  end

  def create
    @item = Item.create(
      name: params[:name],
      image_url: params[:image_url],
      description: params[:description],
      category: params[:category],
    )
    render :show
  end

  def show
    @item = Item.find_by(id: params[:id])
    render :show
  end
end
