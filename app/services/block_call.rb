class BlockCall
  require 'blockcypher'

  attr_reader :load_api

  def initialize
    @load_api = BlockCypher::Api.new(currency:BlockCypher::BTC, network:BlockCypher::TEST_NET_3,
                                     api_token:ENV["BLOCKCYPHER_API_TOKEN"])
  end
end