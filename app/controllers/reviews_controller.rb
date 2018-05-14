class ReviewsController < ApplicationController 
  before_action :authenticate_request!

  def new
    @review = Review.new 
  end

  def create
    @review = Review.create(review_params)
    render json: @review, status: 201
  end

  def show
    @review = Review.find(params[:id]) 
    render json: @review
  end

  private

  def review_params
    params.permit(:id, :star_rating, :description, :person_id, :user_id) 
  end
end
