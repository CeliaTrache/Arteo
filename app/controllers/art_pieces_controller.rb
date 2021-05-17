class ArtPiecesController < ApplicationController
  
  skip_before_action :authenticate_user!, only: :index :show

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
