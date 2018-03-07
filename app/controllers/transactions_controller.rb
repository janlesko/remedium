require_relative '../services/block_call'

class TransactionsController < ApplicationController
  # before_action :authenticate_user!, only: [:index]
  before_action :load_blockcypher_api, only: [:new, :index]

  def index
    @charity = Charity.find(params[:charity_id])
    @transactions = Transaction.where(charity_id: @charity.id)
    @charity_front_wallet = FrontWallet.find(params[:charity_id]).address
    @charity_back_wallet = BackWallet.find(params[:charity_id]).address
    front_wallet_balance = get_front_wallet_balance
    create unless front_wallet_balance.zero?
  end

  def new
    @charity = Charity.find(params[:charity_id])
    @charity_front_wallet = FrontWallet.find(params[:charity_id]).address
  end

  def create
    log_last_transaction_into_database
    transfer_from_front_wallet_to_remedium_wallet
    transfer_from_front_wallet_to_back_wallet
  end

  private

  def load_blockcypher_api
    @blockcypher_api = BlockCall.new.load_api
  end

  def transfer_from_front_wallet_to_remedium_wallet
    private_key = get_private_key
    remedium_wallet = "ms27ucMBbp2habrvf9hG6RTfCmTDyqeiGU"
    amount = (get_front_wallet_balance * 0.01).to_i
    transaction = generate_transaction(@charity_front_wallet, remedium_wallet, amount)
    sign(transaction, private_key)
  end

  def transfer_from_front_wallet_to_back_wallet
    private_key = get_private_key
    back_wallet = BackWallet.find(params[:charity_id]).address
    amount = -1
    transaction = generate_transaction(@charity_front_wallet, back_wallet, amount)
    sign(transaction, private_key)
  end

  def log_last_transaction_into_database
    last_transaction = @blockcypher_api.address_full_txs(@charity_front_wallet)["txs"].last
    received = last_transaction["received"]
    amount = last_transaction["outputs"].first["value"] / 100000000
    sender_address = last_transaction["outputs"].last["addresses"].first
    Transaction.create(sender_address: sender_address, amount: amount, received: received)
  end

  def get_private_key
    charity_name_upcased = @charity.name.upcase.split(/[ .-]/).join("_")
    private_key = ENV["#{charity_name_upcased}_PRIVATE_KEY"]
  end

  def get_front_wallet_balance
    @blockcypher_api.address_final_balance(@charity_front_wallet)
  end

  def generate_transaction(input_address, output_address, amount)
    @blockcypher_api.transaction_new([input_address], [output_address], amount)
  end

  def sign(transaction, private_key)
    @blockcypher_api.transaction_sign_and_send(transaction, private_key)
  end
end
