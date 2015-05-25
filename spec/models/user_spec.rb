require 'spec_helper'

describe User do
	let(:valid_attributes) {
		{
			first_name: "Steve",
			last_name: "Hunter",
			email: "onlysteveh@me.com"
		}
	}
  context "validations" do
  	let(:user) { User.new(valid_attributes) }
  	it "requires an email" do
  		expect(user).to validate_presence_of(:email)
  	end
  end
end
