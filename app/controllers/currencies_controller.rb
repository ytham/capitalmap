class CurrenciesController < ApplicationController

  def largest_economies
    if signed_in?
      respond_to do |format|
        format.html
      end
    else
      redirect_to root_url
    end
  end


end
