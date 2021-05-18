class ArtPiecesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @art_pieces = policy_scope(ArtPiece).order(created_at: :desc)
  end

  def show
    @art_piece = ArtPiece.find(params[:id])
    authorize @art_piece
  end

  def new
  end

  def create
  end
end
