class DashboardsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @dashboards = policy_scope(Dashboard)
    @bookings = current_user.bookings
    @pending_bookings = []
    current_user.art_pieces.each do |art_piece|
      art_piece.bookings.each do |booking|
        @pending_bookings << booking
      end
    end
  end
end
