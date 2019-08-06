class SleepsController < ApplicationController
  before_action :set_dream
  before_action :set_sleep, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    # we need @dream in our `simple_form_for`
    @dream = Dream.find(params[:dream_id])
    @sleep = Sleep.new
  end

  def create
    @sleep = Sleep.new(sleep_params)
  # we need `dream_id` to asssociate sleep with corresponding dream
    @sleep.dream = @dream
    if @sleep.save
      redirect_to dream_path(@dream)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @sleep.update(sleep_params)
    redirect_to sleep_path(@sleep)
  end

  def destroy
    @sleep.destroy
    redirect_to sleep_path
  end

  private

  def set_dream
    @dream = Dream.find(params[:dream_id])
  end

  def set_sleep
    @sleep = Sleep.find(params[:id])
  end

  def sleep_params
    params.require(:sleep).permit(:description, :ingredient_id)
  end
end
