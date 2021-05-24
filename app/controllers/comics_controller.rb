class ComicsController < ApplicationController
  def index
    @comics = Comic.all.order(id: 'DESC')
  end

  def new
    @comic = Comic.new
  end

  def create
    @comic = Comic.new(comic_params)
    if @comic.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @comics = Comic.all
  end

  private

  def comic_params
    params.permit(:image, :title, :genre_id).merge(user_id: current_user.id)
  end
end
