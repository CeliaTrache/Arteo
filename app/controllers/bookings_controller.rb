class BookingsController < ApplicationController
  def new
    @art_piece = ArtPiece.find(params[:art_piece_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @art_piece = ArtPiece.find(params[:art_piece_id])
    @booking = Booking.new(whitelist)
    @booking.status = "waiting"
    authorize @booking
    @booking.art_piece = @art_piece
    @booking.user = current_user
    days = @booking.end_time - @booking.start_time + 1
    @booking.price = days * @art_piece.unit_price
    if @booking.save
      sleep 3
      redirect_to dashboards_path(current_user)
    else
      redirect_to art_piece_path(@art_piece)
    end
  end

  def edit
  end

  def accept
    @booking = Booking.find(params[:booking_id])
    @booking.update(status:'accepted')
    authorize @booking
    redirect_to dashboards_path(current_user)
  end

  def declined
    @booking = Booking.find(params[:booking_id])
    @booking.update(status:'declined')
    authorize @booking
    redirect_to dashboards_path(current_user)
  end

  def show
  end

  private

  def whitelist
    params.require(:booking).permit(:start_time, :end_time)
  end
end
