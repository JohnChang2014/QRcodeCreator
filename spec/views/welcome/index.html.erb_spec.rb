require 'spec_helper'

describe "welcome/index.html.erb" do
	it "shows a title of 'Welcome to QR code generator'" do
		render
		expect(rendered).to have_content('Welcome to QR code generator')
	end
end
