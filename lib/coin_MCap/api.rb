require 'pry'
require "rest-client"
require "json"

module CoinMCap
  # Your code goes here...
end
class CoinMCap::API

  def self.get_markets
    data = RestClient.get("https://api.coinmarketcap.com/v1/ticker/")
    @parsed_markets = JSON.parse(data)
    @parsed_markets.each do  |ticker|
      binding.pry
      ticker
    end
  end
end

CoinMCap::API.get_markets
