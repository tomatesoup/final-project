require 'rails_helper'
require 'spec_helper'

RSpec.describe SubtitlesController, type: :controller do
	describe "GET #all" do
    it "responds successfully with an HTTP 200 status code" do
      get :all
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  end

	describe "POST #create" do
    context "with valid attributes" do
      it "saves the new subtitle to the database" do
        expect{ post :create, subtitle: FactoryGirl.attributes_for(:subtitle) 
          }.to change(Subtitle,:count).by(1)
      end
    end
  end
end