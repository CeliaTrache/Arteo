class ArtPiecesController < ApplicationController
  def index
    @art_pieces = ArtPiece.all
  end

  def show
    @art_piece = ArtPiece.find(params[:id])
  end

  def new
  end

  def create
  end
end
