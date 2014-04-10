#encoding: utf-8

When(/^I open the application url$/) do
visit '/'
end

Then(/^I must see the front page with application title "(.*?)"$/) do |arg1|
 expect(page).to have_title "Stock productivity calculator"
end

When(/^I press button "(.*?)"$/) do |arg1|
  click_on 'Add' 
end

Then(/^I must see the page with title "(.*?)"$/) do |arg1|
  pending
end

Then(/^I must be able to enter the following values:$/) do |table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end

Then(/^I press button "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I must see the original input data:$/) do |table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end

Then(/^list of stock values for each year:$/) do |table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end

Then(/^the stock growth is shown as a visual graph$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^the stock data must be saved into the database for later review$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I click "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Given(/^the system has already calculated stocks$/) do |table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end

Then(/^I must see a table of saved stocks:$/) do |table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end

When(/^I click on the calculated line "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I must see the already calculated data$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I must see a table of saved stocks:$/) do |table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end

When(/^stock data changes on backend$/) do |table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see stock price "(.*?)" for "(.*?)" in less than (\d+) seconds$/) do |arg1, arg2, arg3|
  pending # express the regexp above with the code you wish you had
end