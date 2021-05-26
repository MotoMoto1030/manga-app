class ComicsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

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
    if user_signed_in?
    @comic = Comic.find(params[:id])
    else
      redirect_to root_path
    end
  end

  private

  def comic_params
    params.permit(:image, :title, :genre_id).merge(user_id: current_user.id)
  end
end
