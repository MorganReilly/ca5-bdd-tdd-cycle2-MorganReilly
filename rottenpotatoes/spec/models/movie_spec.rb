require 'spec_helper'

describe Movie do
  describe "#similar" do
    it "should find movies by the same director" do
        Movie.should_receive(:search_directors).with('Star Wars')
        Movie.search_directors('Star Wars')
    end

    it "should not find movies by different directors" do
        Movie.should_not_receive(:search_directors).with('Star Wars') 
    end
  end
end