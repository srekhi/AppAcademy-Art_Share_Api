class ArtworkSharesController < ApplicationController
  def create
    as = ArtworkShare.new(artwork_share_params)
    if as.save
      render json: as
    else
      render(
        json: as.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  def destroy
    as = ArtworkShare.find(params[:id])
    as.destroy
    render json: as
  end


  private
  def artwork_share_params
    params.require(:artwork_share).permit(:artwork_id, :viewer_id)
  end

end
