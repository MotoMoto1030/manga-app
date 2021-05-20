class ComicsController < ApplicationController
  def index
  end

  def new
  end

  def create
  end
  private

  def comic_params
    params.require(:comic).permit(:content, :image).merge(user_id: current_user.id)
  end
end
