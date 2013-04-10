class MovieSearch
# require 'open-uri'
  def search
    file = open("http://www.omdbapi.com/?s=#{URI.escape("Training Day")}")
    @result = JSON.load(file.read)['Search']
  end
end


