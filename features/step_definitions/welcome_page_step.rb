When(/^users visit the welcome page of QR code generator$/) do
	visit root_path
end

Then(/^the page should say "(.*?)"$/) do |arg1|
	expect(page).to have_content('Welcome to QR code generator')
end

Then(/^the page should have a text title of "(.*?)"$/) do |arg1|
	expect(page).to have_content('Please enter any message for your QR code below:')
end

Then(/^the page should have a form for users to enter any message$/) do
	expect(page).to have_selector('form', :method => 'POST', :action => qrcodes_path) do |form|
		expect(form).to have_selector('input', :type => 'text', :placeholder => 'Enter message here.')
		expect(form).to have_selector('input', :type => 'submit')
	end
end