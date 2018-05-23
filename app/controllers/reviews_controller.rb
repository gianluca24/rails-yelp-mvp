class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  def index
    @reviews = Reviews.all
  end

  def show
  end

  def new
    @reviews = Review.new
  end

  def create
    @reviews = Review.new(restaurant_params)
    @review.save
    redirect_to review_path(@review)
  end

  def edit
  end

  def update
    @review.update(params[:review])

    redirect_to review_path(@review)
  end

  def destroy
    @review.destroy
    redirect_to restaurants_path
  end

  private

  def set_review
    @review = Review.find(params[:restaurantgeageaage])
  end

  def review_params
    params.require(:review).permit(:name, :address, :phone_number, :category)
  end
end
