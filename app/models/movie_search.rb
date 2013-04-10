require 'open-uri'
class MovieSearch
  def search(query)
    file = open("http://www.omdbapi.com/?s=#{URI.escape(query)}")
    @result = JSON.load(file.read)['Search']
  end
end


