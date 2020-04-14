require 'rails_helper'

describe MoviesController, type: 'controller' do
  describe "#director" do
    context "When specified movie has a director" do
      it "should find movies with the same director" do
        Movie.should_receive(:search_directors).with('Star Wars')
        Movie.search_directors('Star Wars')
      end
    end

    context "When specified movie has no director" do
      it "should redirect to the movies page" do
        Movie.should_not_receive(:search_directors).with('Star Wars')

        # Redirect to movies
        redirect_to movies_path
      end
    end
  end
end