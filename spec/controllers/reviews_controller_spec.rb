require 'rails_helper'

RSpec.describe ReviewsController, type: :controller do

  context 'getting pages' do

    it "gets the index page" do
      get :index
      expect(response).to render_template("index")
    end


  end

end
