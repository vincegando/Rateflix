require 'rails_helper'

RSpec.describe Movie, type: :model do

  context 'creating Movies' do
    it "has title" do
      expect(Movie.new(title: "title")).to have_attributes(title: "title")
    end

    it "has release_date" do
        expect(Movie.new(release_date: "1/1/2000")).to have_attributes(release_date: "1/1/2000")
      end

    it "has genre" do
      expect(Movie.new(genre: "comedy")).to have_attributes(genre: "comedy")
    end

    it "has rating" do
      expect(Movie.new(rating: 3)).to have_attributes(rating: 3)
    end

  end

end
