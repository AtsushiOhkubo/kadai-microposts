class FavoritesController < ApplicationController

  
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.like(micropost)
    flash[:success] = 'Micropostをお気に入り登録しました。'
    redirect_to current_user
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unlike(micropost)
    flash[:success] = 'Micropostのお気に入り登録を解除しました。'
    redirect_to current_user
  end
end
