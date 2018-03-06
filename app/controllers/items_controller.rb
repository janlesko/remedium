class ItemsController < ApplicationController

  def create
    @charity = Charity.find(params[:charity_id])
    @item = Item.new

  end

  private

  def item_params
    params.require(:item).permit(:name, :price, :quantity)

  end
end
