class SustainabilityDataController < ApplicationController
  def social_data
    if signed_in?
      respond_to do |format|
        format.html
      end
    else
      redirect_to root_url
    end
  end
end
