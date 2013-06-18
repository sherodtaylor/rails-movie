require 'spec_helper'
describe Movies do
  before do
    search = Movies.new
    @movies = search.movie_details("True Grit")
  end
  it "Saves Movie Details into Result" do
    @movies.should_not be_nil
  end
end
