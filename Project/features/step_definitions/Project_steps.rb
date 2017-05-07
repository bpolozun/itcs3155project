Given(/^I am on the home page$/) do
  visit root_path
end

When(/^I click on the "([^"]*)" link$/) do |page_name|
  click_link page_name
end

Then(/^I should be on the "([^"]*)" page$/) do |page_name|
  expect(page).to have_content(page_name)
end

Then(/^I should see the "([^"]*)" field$/) do |field_name|
  expect(page).to have_field(field_name)
end

Then(/^I should fill in "([^"]*)" field$/) do |field_name|
  fill_in field_name, with: "field_name"
end

Then(/^I should click on the "([^"]*)" button$/) do |button_name|
  click_button button_name
end

Then(/^I should select the "([^"]*)" field$/) do |field_name|
  select('Sports', from: 'Category')
end

Then(/^I should see the "([^"]*)" link$/) do |field_name|
  select('Sports', from: 'Category')
end

