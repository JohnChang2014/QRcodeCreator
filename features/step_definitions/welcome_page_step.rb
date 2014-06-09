When(/^users visit the welcome page of QR code generator$/) do
	visit root_path
end

Then(/^the page should say "(.*?)"$/) do |arg1|
	expect(page).to have_content('Welcome to QR code generator')
end

Then(/^the page should have a text field with the title of "(.*?)"$/) do |arg1|
	pending # express the regexp above with the code you wish you had
end