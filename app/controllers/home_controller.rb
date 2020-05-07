class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: 'pk_b27aa61e4a7640fd99a01a2b9ee687bd')

    
  end 

  def about
  end
end
