require 'open-uri'
class MovieController < ApplicationController
  def home
  end

  def json_data
    m = Movies.new
    @id = params[:id]
    m.movie_details(@id)
    result = m.result
    title = result['Title']
    plot = result['Plot']
    poster = result['Poster']
    actors = result['Actors'].split(', ')
    director = result['Director'].split(', ')
    tomatoes = result['tomatoMeter']
    hash = { :title => title, :plot => plot, :poster => URI.escape(poster), :actors => actors, :directors => director, :tomatoRating => tomatoes }
    render :json => hash
  end
end
