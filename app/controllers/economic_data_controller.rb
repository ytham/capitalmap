class EconomicDataController < ApplicationController
  def leading_indicators
    @indicator = fetch_url 'http://public.tableausoftware.com/views/USEconomicDataNationalAccounts/Dashboard1?:embed=y&:display_count=n'
    if signed_in?
      respond_to do |format|
        format.html
      end
    else
      redirect_to root_url
    end
  end


end
