class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  def home
    @dreams = Dream.first(3)
    @dreams_critics_choice = Dream.all.sort_by {|dream| dream.reviews.map {|review| review.rating }.sum / dream.reviews.size }
  end
end
