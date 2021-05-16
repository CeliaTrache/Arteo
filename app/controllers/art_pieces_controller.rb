class ArtPiecesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      sql_query = "title ILIKE :query OR category ILIKE :query OR artist ILIKE :query"
      @art_pieces = policy_scope(ArtPiece).where(sql_query, query: "%#{params[:query]}%")
    else
      @art_pieces = policy_scope(ArtPiece).order(created_at: :desc)
    end
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
