class HomeController < ApplicationController
  @api = StockQuote::Stock.new(api_key: 'pk_d03a3d58c30a4100bc9e18f2a39c271e')
  def index

    

    if params[:ticker] == ""
    	   @nothing = "Hey! You Forgot To Enter A Symbol"
  	elsif params[:ticker]
  	     @stock = StockQuote::Stock.quote(params[:ticker])
         if !@stock
          @error = "Hey! That Stock Symbol Doesnt Exist! Please try again!"
         end
    end

end
  

  def about
  end
end

