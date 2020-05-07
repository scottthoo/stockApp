class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: 'pk_b27aa61e4a7640fd99a01a2b9ee687bd')

    if params[:ticker] == ""
      @nothing = "Hey! You Forgot To Enter A symbol"
    elsif params[:ticker]
      begin
        @stock = StockQuote::Stock.quote(params[:ticker])
        @stockLogo = StockQuote::Stock.logo(params[:ticker])
      rescue StandardError => e
        @error = e
      end
    end
  end 

  # def about
  # end
end
