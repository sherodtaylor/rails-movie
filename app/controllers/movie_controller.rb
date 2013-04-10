class MovieController < ApplicationController
  def results
    @query = params[:q]
    m = MovieSearch.new
    @result = m.search(@query)
  end
  
  def details
    m = Movies.new
    @id = params[:id]
    m.movie_details(@id)
    @result = m.result
    @title = @result['Title']
    @plot = @result['Plot']
    @poster = @result['Poster']
    @actors = @result['Actors']
    @director = @result['Director']
    @tomatoes = @result['tomatoMeter'] 
  end
end
