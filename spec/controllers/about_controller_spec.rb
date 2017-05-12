require 'rails_helper'

RSpec.describe AboutController, type: :controller do

  it "gets the about page" do
    get :index
    expect(response).to render_template("index")
  end

end
