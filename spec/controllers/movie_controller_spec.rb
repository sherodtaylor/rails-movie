require 'spec_helper'

describe MovieController do
  describe "#results " do
    it "should assign instance variable result" do
      get :results, { :q => "seattle" }
      assigns(:result).should_not be_nil
    end

    it "should assign query instance variable" do
      get :results, { :q => "seattle" }
      assigns(:query).should eq "seattle"
    end
  end

  describe "#details" do
    it "should assign id instance variable" do
      get :details, { :id => "tt0108160" }
      assigns(:id).should eq "tt0108160"
    end

    it "should assign title variable" do
      get :details, { :id => "tt0108160" }
      assigns(:title).should eq "Sleepless in Seattle"
    end

    it "should assign poster variable" do
      get :details, { :id => "tt0108160" }
      assigns(:poster).should eq "http://ia.media-imdb.com/images/M/MV5BMTIzNDM0MTAzNV5BMl5BanBnXkFtZTcwNDE3MDMyMQ@@._V1_SX300.jpg"
    end
  end
end
