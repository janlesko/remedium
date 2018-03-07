
class CharitiesController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update]

  def index
    @charities = Charity.all
  end

  def show
    find_charity
    key = (@charity.video.split("="))[1]
    @embedded_video_url = "https://www.youtube.com/embed/" + key
    @goal = @charity.calculate_goal
  end

  def edit
    find_charity
    @item = Item.new
  end

  def update
    find_charity
    @charity.update(update_params)
    redirect_to charity_path(@charity)
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, photos: [])
  end

  def find_charity
    @charity = Charity.find(params[:id])
  end

  def update_params
    params.require(:charity).permit(photos: [])

  end
end
