class MoviesController < ApplicationController
  def index
    response = HTTP.get("http://www.omdbapi.com/?s=#{params[:search_terms]}&apikey=#{ENV["OMDb_API_KEY"]}")
    movies = response.parse["Search"]
    render json: movies
  end
end
