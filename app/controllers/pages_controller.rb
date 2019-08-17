class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  def home
    @dreams = Dream.first(3)
    @dreams_critics_choice = Dream.last(3)
    @dreams_latest = Dream.last(3)
  end
end
