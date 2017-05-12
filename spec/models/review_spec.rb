require 'rails_helper'

RSpec.describe Review, type: :model do

  context 'creating Reviews' do
    it "has username" do
      expect(Review.new(username: "Bob")).to have_attributes(username: "Bob")
    end

    it "has email" do
      expect(Review.new(email: "Bob@gmail.com")).to have_attributes(email: "Bob@gmail.com")
    end

    it "has date" do
      expect(Review.new(date: "12/12/2020")).to have_attributes(date: "12/12/2020")
    end

    it "has rating" do
      expect(Review.new(rating: 1)).to have_attributes(rating: 1)
    end

    it "has comment" do
      expect(Review.new(comment: "cool")).to have_attributes(comment: "cool")
    end

  end

end
