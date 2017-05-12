require 'rails_helper'

RSpec.describe HomeController, type: :controller do

  it "gets the home page" do
    get :index
    expect(response).to render_template("index")
  end

end
