When(/^a funny message "(.*?)" is entered$/) do |message|
	visit root_path
	fill_in 'message', with: message
end

When(/^qrcode\-user hit the button "(.*?)"$/) do |submit|
	click_button submit
end

Then(/^the page should show the result qrcode on the screen$/) do
	pending # express the regexp above with the code you wish you had
end