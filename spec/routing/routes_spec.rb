require 'spec_helper'

RSpec.describe "Routes", type: :routing do
  describe "MoviesController" do
    it "routes get index" do
      expect(:get => "movies").to route_to(
        :controller => "movies",
        :action => "index"
      )
    end


    it "routes get show" do
      expect(:get => "movies/1").to route_to(
        :controller => "movies",
        :action => "show",
        :id => "1"
      )
    end

    it "routes post create" do
      expect(:post => "movies").to route_to(
        :controller => "movies",
        :action => "create"
      )
    end

    it "routes get edit" do
      expect(:get => "movies/1/edit").to route_to(
        :controller => "movies",
        :action => "edit",
        :id => "1"
      )
    end

    it "routes put update" do
      expect(:put => "movies/1").to route_to(
        :controller => "movies",
        :action => "update",
        :id => "1"
      )
    end

    it "routes delete destroy" do
      expect(:delete => "movies/1").to route_to(
        :controller => "movies",
        :action => "destroy",
        :id => "1"
      )
    end

  end

  describe "ReviewsController" do
    it "routes get index" do
      expect(:get => "reviews").to route_to(
        :controller => "reviews",
        :action => "index"
      )
    end


    it "routes get show" do
      expect(:get => "reviews/1").to route_to(
        :controller => "reviews",
        :action => "show",
        :id => "1"
      )
    end

    it "routes post create" do
      expect(:post => "reviews").to route_to(
        :controller => "reviews",
        :action => "create"
      )
    end

  end

  describe "HomeController" do
    it "routes get index" do
      expect(:get => "/").to route_to(
        :controller => "home",
        :action => "index"
      )
    end

  end

  describe "AboutController" do
    it "routes get index" do
      expect(:get => "about").to route_to(
        :controller => "about",
        :action => "index"
      )
    end

  end

end
