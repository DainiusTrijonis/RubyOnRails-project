require 'open-uri'

class BitcoinController < ApplicationController
  layout 'application'

  before_action :check_price, only: [:bitcoin]

  def bitcoin
    @page_title = 'Bitcoin Price Checker'
  end

  private

  def check_price
    obj = JSON.load(open("https://api.coinmarketcap.com/v1/ticker/bitcoin/"))
    @price = obj[0]["price_usd"].to_f.round(2)
  end

end
