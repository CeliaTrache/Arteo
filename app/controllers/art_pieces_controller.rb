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
    @booking = Booking.new
    authorize @art_piece
  end

  def new
    @art_piece = ArtPiece.new
    authorize @art_piece
  end

  def create
    @art_piece = ArtPiece.new(whitelist)
    authorize @art_piece
    @art_piece.user = current_user
    @art_piece.save
    redirect_to art_pieces_path(current_user)
  end

  private

  def whitelist
    params.require(:art_piece).permit(:title, :artist, :description, :category, :painting_technic, :size, :unit_price, :photo)
  end
end
