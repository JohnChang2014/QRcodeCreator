When(/^a funny message is entered$/) do
	visit root_path
	fill_in 'message', with: 'hello'
end

When(/^qrcode\-user hit the button submit$/) do
	click_button 'submit'
end

Then(/^the page should show the result qrcode on the screen$/) do
	pending # express the regexp above with the code you wish you had
end