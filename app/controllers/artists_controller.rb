class ArtistsController < ApplicationController

  before_action :set_artist, only: [:show, :edit, :update, :destroy]

  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    respond_to do |format|
      format.html do
        if @artist.save
          flash[:notice] = "Artist has been created."
          redirect_to @artist
        else
          flash[:alert] = "Artist has not been created."
          render action: "new"
        end
      end
      format.js do
        render text: @artist.errors.full_messages.join,
          status: :unprocessable_entity unless @artist.save
      end
    end
  end

  def show
  end

  def edit
  end

  def update
    if @artist.update(artist_params)
      flash[:notice] = "Artist has been updated."
      redirect_to @artist
    else
      flash[:alert] = "Artist has not been updated."
      render action: "edit"
    end
  end

  def destroy
    @artist.destroy

    flash[:notice] = "Artist has been destroyed."

    redirect_to artists_path
  end

  private

  def artist_params
    params.require(:artist).permit(:name)
  end

  def set_artist
    @artist = Artist.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash[:alert] = "The artist you were looking for could not be found."
    redirect_to artists_path
  end

end
