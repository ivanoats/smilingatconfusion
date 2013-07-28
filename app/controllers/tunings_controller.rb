class TuningsController < ApplicationController

  def new
    @tuning = Tuning.new
  end

  def create
    @tuning = Tuning.new(tuning_params)

    respond_to do |format|
      format.html do
        if @tuning.save
          flash[:notice] = "Tuning has been created."
          redirect_to @tuning
        else
          flash[:alert] = "Tuning has not been created."
          render action: "new"
        end
      end
      format.js do
        render text: @tuning.errors.full_messages.join,
          status: :unprocessable_entity unless @tuning.save
      end
    end
  end

  private

    def tuning_params
      params.require(:tuning).permit(:name, :notes)
    end

end
