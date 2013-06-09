class StocksController < ApplicationController

  def index
    if signed_in?
      respond_to do |format|
        format.html
      end
    else
      redirect_to root_url
    end
  end

  def create
    @stock = current_user.stocks.new(params[:stock])
    if @stock.save
      respond_to do |format|
        format.js
      end
    end
  end

  def destroy
  end

end
