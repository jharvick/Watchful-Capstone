class FavoritesController < ApplicationController
  def create
    @favorite = Favorite.create(
      user_id: current_user.id,
      item_id: params[:item_id],
    )
    render :show
  end
end
