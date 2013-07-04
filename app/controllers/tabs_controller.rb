class TabsController < ApplicationController

  before_action :set_tab, only: [:show, :edit, :update, :destroy]

  def index
    @tabs = Tab.all
  end

  def new
    @tab = Tab.new
  end

  def create
    @tab = Tab.new(tab_params)

    if @tab.save
      flash[:notice] = "Tab has been created."
      redirect_to @tab
    else
      flash[:alert] = "Tab has not been created."
      render action: "new"
    end
  end

  def show
  end

  def edit
  end

  def update
    if @tab.update(tab_params)
      flash[:notice] = "Tab has been updated."
      redirect_to @tab
    else
      flash[:alert] = "Tab has not been updated."
      render action: "edit"
    end
  end

  def destroy
    @tab.destroy

    flash[:notice] = "Tab has been destroyed"

    redirect_to tabs_path
  end

  private

    def tab_params
      params.require(:tab).permit(:title, :notes, :body)
    end

    def set_tab
      @tab = Tab.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      flash[:alert] = "The tab you were looking for could not be found."
      redirect_to tabs_path
    end

end
