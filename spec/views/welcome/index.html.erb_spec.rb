require 'spec_helper'

describe "welcome/index.html.erb" do
	context 'page header' do
		it "shows a title of 'Welcome to QR code generator'" do
			render
			expect(rendered).to have_content('Welcome to QR code generator')
		end
	end
	
	context 'render message form' do
		it "has a title of 'Please enter any message for your QR code below:' above a form" do
			render
			expect(rendered).to have_content('Please enter any message for your QR code below:')
		end
		
		it "has a form for users to enter any message" do
			render
			expect(rendered).to have_selector('form')
			expect(rendered).to have_selector('form input[type=text][name=message][placeholder="Enter message here."]')
			expect(rendered).to have_selector('form input[type="submit"][value=submit]')
		end
	end
end
