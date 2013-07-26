class SecuritiesController < ApplicationController
  def corporate_bonds
    if signed_in?
      respond_to do |format|
        format.html
      end
    else
      redirect_to root_url
    end
  end

  def soverign_bonds
    if signed_in?
      respond_to do |format|
        format.html
      end
    else
      redirect_to root_url
    end
  end

  def municipal_bonds
    if signed_in?
      respond_to do |format|
        format.html
      end
    else
      redirect_to root_url
    end
  end

  def equities
    if signed_in?
      respond_to do |format|
        format.html
      end
    else
      redirect_to root_url
    end
  end

  def stock_growth
    if signed_in?
      respond_to do |format|
        format.html
      end
    else
      redirect_to root_url
    end
  end

  def etfs
    if signed_in?
      respond_to do |format|
        format.html
      end
    else
      redirect_to root_url
    end
  end
end
