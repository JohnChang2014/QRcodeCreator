Given(/^I am at the welcome page$/) do
	visit root_path
end

Given(/^I fill in "(.*?)" with "(.*?)"$/) do |field, text|
	fill_in field, with: text
end

When(/^I hit the button "(.*?)"$/) do |submit|
	click_button submit
end

Then(/^the page should show the result qrcode on the screen$/) do
	page.has_css? 'img'
end

