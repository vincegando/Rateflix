class HomeController < ApplicationController

  def index
    @movies = Movie.order(params[:sort])
  end

end
