require_relative '../services/block_call'

class TransactionsController < ApplicationController
  # before_action :authenticate_user!, only: [:index]
  before_action :load_blockcypher_api, only: [:new]

  def index
    # restrited to user; display all transactions to a specific charity
  end

  def new
    @charity = Charity.find(params[:charity_id])
    # display charity front wallet address
    @charity_front_wallet = FrontWallet.find(params[:charity_id]).address
    # notify sender that the donation transaction was confirmed on blockchain
    # @balance = @blockcypher_api.address_final_balance(@charity_front_wallet)
    # execute create action if front wallet recevied a transaction
    #create if new_transaction?
  end

  def create
    transfer_from_front_wallet_to_remedium_wallet
    transfer_from_front_wallet_to_back_wallet
    # transfer 99% of funds to charity back wallet address
    # make db record
    # allow user to print a certificate
  end

  private

  def load_blockcypher_api
    @blockcypher_api = BlockCall.new.load_api
  end

  def new_transaction?
    #@blockcypher_api
  end

  def transfer_from_front_wallet_to_remedium_wallet
  end

  def transfer_from_front_wallet_to_back_wallet
  end
end
