class MoviesController < ApplicationController
  def index
    response = HTTP.get("http://www.omdbapi.com/?i=tt3896198&apikey=209aa999#{ENV["MOVIE_API_KEY"]}")
    movies = response.parse
    render json: movies
  end
end
