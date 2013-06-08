class StaticController < ApplicationController
  def index
    @user = User.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def hedge_funds
  end

  def investment_management
  end

  def financial_advisors
  end

  def traders
  end
end
