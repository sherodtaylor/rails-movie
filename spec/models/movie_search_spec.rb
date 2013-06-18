require 'spec_helper'

describe MovieSearch do
  before do
    @search = MovieSearch.new
  end
  it "should be able to get movie results" do
    results = @search.search("true grit")
    results.should_not be_nil
  end
end
