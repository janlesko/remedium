class CharitiesController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update]

  def index
    @charities = Charity.all
  end

  def show
  end

  def edit
  end

  def update
  end
end
