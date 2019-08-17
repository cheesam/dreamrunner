class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  def index         # GET /reviews
    @reviews = Review.all
  end

  def show
    @dream = Dream.find(params[:dream_id])
  end

  def new           # GET /reviews/new
    @review = Review.new
    @dream = Dream.find(params[:dream_id])
  end

  def create        # POST /reviews
    @review = Review.new(review_params)
    @review.user = current_user
    @review.dream = Dream.find(params[:dream_id])
    @dream = Dream.find(params[:dream_id])
    if @review.save
      redirect_to dream_path(@dream)
    else
      render :new
    end
  end

  def edit          # GET /reviews/:id/edit
    @dream = Dream.find(params[:dream_id])
    @review = Review.find(params[:id])
  end

  def update        # PATCH /reviews/:id
    @dream = Dream.find(params[:dream_id])
    @review.update(review_params)
    redirect_to dream_path(@dream)
  end

  def destroy      # DELETE /reviews/:id
    @review = Review.find(params[:id])
    @review.destroy

    redirect_to dream_path(@review.dream)
  end

  private

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:content, :accuracy, :value, :design)
  end
end
