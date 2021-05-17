class ArtPiecesController < ApplicationController
  def index
    @art_pieces = ArtPiece.all
  end

  def show
  end

  def new
  end

  def create
  end
end
