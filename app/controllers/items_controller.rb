class ItemsController < ApplicationController

  def create
    @charity = Charity.find(params[:charity_id])
    @item = Item.new(item_params)
    @item.charity = @charity
    @item.save

    redirect_to charity_path(@charity)


  end

  private

  def item_params
    params.require(:item).permit(:name, :price, :quantity)

  end
end
