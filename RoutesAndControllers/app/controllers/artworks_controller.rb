class ArtworksController < ApplicationController

  def index
    user = User.find(params[:user_id])
    user_artworks = user.artworks
    user_shared_artworks = user.shared_artworks
    render json: user_artworks.to_a + user_shared_artworks.to_a
  end

  def create
    artwork = Artwork.new(artwork_params)
    if artwork.save
      render json: artwork
    else
      render(
        json: artwork.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  def show
    artwork = Artwork.find(params[:id])
    render json: artwork
  end

  def update
    artwork = Artwork.find(params[:id])
    if artwork.update(artwork_params)
      render json: artwork
    else
      render(
        json: artwork.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  def destroy
    artwork = Artwork.find(params[:id])
    artwork.destroy
    render json: artwork

  end

  private
  def artwork_params
    params.require(:artwork).permit(:artist_id, :title, :image_url)
  end
end
