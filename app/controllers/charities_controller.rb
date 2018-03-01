class CharitiesController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update]

  def index
    @charities = Charity.all
  end

  def show
    @charity = Charity.find(params[:id])
  end

  def edit
  end

  def update
  end
end
