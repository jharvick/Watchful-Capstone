class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
    render :index
  end

  def create
    @favorite = Favorite.create(
      user_id: current_user.id,
      item_id: params[:item_id],
    )
    render :show
  end
end
