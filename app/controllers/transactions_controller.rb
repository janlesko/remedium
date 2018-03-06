require_relative '../services/block_call'

class TransactionsController < ApplicationController
  # before_action :authenticate_user!, only: [:index]
  before_action :load_blockcypher_api, only: [:new, :index]

  def index
    @charity = Charity.find(params[:charity_id])
    @transactions = Transaction.where(charity_id: @charity.id)
    # check the front wallet for new transaction
    @charity_front_wallet = FrontWallet.find(params[:charity_id]).address
    @balance = @blockcypher_api.address_final_balance(@charity_front_wallet)
    create unless @balance.zero?
  end

  def new
    @charity = Charity.find(params[:charity_id])
    @charity_front_wallet = FrontWallet.find(params[:charity_id]).address
  end

  def create
    # split the amount between remedium and back wallet and update the database
    transfer_from_front_wallet_to_remedium_wallet
    transfer_from_front_wallet_to_back_wallet
    # make db record
  end

  private

  def load_blockcypher_api
    @blockcypher_api = BlockCall.new.load_api
  end

  def transfer_from_front_wallet_to_remedium_wallet
    @balance
    #@blockcypher_api.microtx_from_priv("97838249d77bfa65f97be02b63fd1b7bb6a58474c7c22784a0da63993d1c2f90", "C1rGdt7QEPGiwPMFhNKNhHmyoWpa5X92pn", 20000)
  end

  def transfer_from_front_wallet_to_back_wallet
  end
end
