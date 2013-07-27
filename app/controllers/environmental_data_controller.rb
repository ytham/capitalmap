class SustainabilityDataController < ApplicationController
  def environmental_data
    if signed_in?
      respond_to do |format|
        format.html
      end
    else
      redirect_to root_url
    end
  end
end

