class TabsController < ApplicationController
  def index
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
    @tab = Tab.find(params[:id])
  end

  private

    def tab_params
      params.require(:tab).permit(:title, :notes, :body)
    end

end
