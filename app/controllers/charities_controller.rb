class CharitiesController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update]

  def index
    @charities = Charity.all
  end

  def show
    @charity = Charity.find(params[:id])
    key = (@charity.video.split("="))[1]
    @embedded_video_url = "https://www.youtube.com/embed/" + key
  end

  def edit
  end

  def update
  end
end
