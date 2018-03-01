class TransactionsController < ApplicationController
  def index
  end

  def new
    @charity = Charity.find(params[:charity_id])
  end
end
