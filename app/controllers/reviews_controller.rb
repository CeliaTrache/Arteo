class ReviewsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create, :destroy]
  before_action :find_review, only: [:destroy]

  def new
    @art_piece = ArtPiece.find(params[:art_piece_id])
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @review.art_piece = ArtPiece.find(params[:art_piece_id])
    authorize @review
    @review.user = current_user
    if @review.save
      redirect_to art_piece_path(@review.art_piece)
    else
      redirect_to art_piece_path(@art_piece)
    end
  end

  def destroy
    @art_piece = @review.art_piece
    @review.destroy
    redirect_to art_piece_path(@art_piece)
  end

  private

  def find_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
