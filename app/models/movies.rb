require 'open-uri'
class Movies
  attr_accessor :result
  def movie_details(imdb)
  file = open("http://www.omdbapi.com/?i=#{URI.escape(imdb)}&tomatoes=true")
  @result = JSON.load(file.read)
  end
end
