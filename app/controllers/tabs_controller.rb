class TabsController < ApplicationController
  def index
    @tabs = Tab.all
  end

  def show
    @tab = Tab.find(params[:id])
    @tabs = Tab.all
  end

  def new
    @tab = Tab.new
  end

  def create
    @tab = Tab.new(params[:tab])
    if @tab.save
      redirect_to @tab
    else
      redirect_to root_url
    end
  end

  def edit
    @tab = Tab.find(params[:id])
  end

  def update
    @tab = Tab.find(params[:id])
    if @tab.update_attributes(params[:tab])
      redirect_to @tab
    else
      redirect_to root_url
    end
  end

  def destroy
    @tab = Tab.find(params[:id]).destroy
    redirect_to admin_path
  end
end
