require 'rails_helper'
require 'spec_helper'

describe "Subtitle" do 
	it "has a valid factory" do
		FactoryGirl.create(:subtitle).should be_valid
	end
end