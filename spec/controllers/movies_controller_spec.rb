require 'rails_helper'

RSpec.describe MoviesController, type: :controller do

  context 'getting pages' do

    it "gets the index page" do
      get :index
      expect(response).to render_template("index")
    end

    it "gets the new page" do
      get :new
      expect(response).to render_template("new")
    end

  end

end
