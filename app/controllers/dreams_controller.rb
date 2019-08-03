class DreamsController < ApplicationController
  before_action :set_dream, only: [:show, :edit, :update, :destroy]

  def index         # GET /dreams
    @dreams = Dream.all
  end

  def show          # GET /dreams/:id
  end

  def new           # GET /dreams/new
    @dream = Dream.new
  end

  def create        # POST /dreams
    @dream = Dream.new(dream_params)
    @dream.user = current_user
    if @dream.save
      redirect_to dream_path(@dream)
    else
      raise
      render :new
    end
  end

  def edit          # GET /dreams/:id/edit
  end

  def update        # PATCH /dreams/:id
    @dream.update(dream_params)
    redirect_to dream_path(@dream)
  end

  def destroy       # DELETE /dreams/:id
    @dream.destroy
    redirect_to dreams_path
  end

  private

  def set_dream
    @dream = Dream.find(params[:id])
  end

  def dream_params
    params.require(:dream).permit(:name, :category, :price, :description)
  end
end
