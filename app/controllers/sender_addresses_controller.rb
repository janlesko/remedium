class SenderAddressesController < ApplicationController
  def index
    @address = params[:sender]
    @transactions = Transaction.where(sender_address: @address)
  end
end
