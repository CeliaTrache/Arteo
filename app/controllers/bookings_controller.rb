class BookingsController < ApplicationController
  def new
    @art_piece = ArtPiece.find(params[:art_piece_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @art_piece = ArtPiece.find(params[:art_piece_id])
    @booking = Booking.new(whitelist)
    authorize @booking
    @booking.art_piece = @art_piece
    @booking.save
    redirect_to art_pieces_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def show
  end

  private

  def whitelist
    params.require(:booking).permit(:start_time, :end_time)
  end
end
