class AlbumsController < ApplicationController
  def new
  	@album  = Album.new

  end

  def create
    @album = Album.new(album_params)
    @artist = Artist.find(params[:id])
    @artist.albums << @album # se asocia un album al artista actual

    if @album.save
      redirect_to albums_path, notice: "El album fue publicado"
    else
      render new
    end
  end

private
  def album_params
  	params.required(:album).permit(:name, :image_url, :release_at)
  end
end
