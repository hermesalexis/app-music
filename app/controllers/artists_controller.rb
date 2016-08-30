class ArtistsController < ApplicationController
  def index
   @artists = Artist.all
  end

  def new
   @artist = Artist.new
  end

  def create
  	@artist = Artist.new(artist_params)
  	if @artist.save
  		redirect_to artists_path, notice: "El Artista fue publicado"
  	else
  		render :new
  	end
  end

  def show
    @artist = Artist.find(params[:id])
    @albums = @artist.albums
  end

  private
    def artist_params
      params.required(:artist).permit(:name, :image_url)
    end
end
