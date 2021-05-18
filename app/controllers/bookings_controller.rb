class BookingsController < ApplicationController
  def new
    # @booking = Booking.new
    # authorize @booking
  end

  def create
    # @booking = Booking.new(whitelist)
    # authorize @booking
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
    # params.require(:booking).permit(:start_time, :end_time)
  end
end
