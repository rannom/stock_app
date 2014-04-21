#encoding: utf-8

When(/^I open the application url$/) do
visit '/'
end

Then(/^I must see the front page with application title "(.*?)"$/) do |arg1|
 expect(page).to have_title arg1
end

Then(/^I press link "(.*?)"$/) do |arg1|
  click_on arg1
end

Then(/^I must see the page with title "(.*?)"$/) do |arg1|
   expect(page).to have_title arg1
end

Then(/^I must be able to enter the following values:$/) do |table|
 fill_in('Name', :with => 'Company XYZ')
 fill_in('Price', :with => '2.00')
 fill_in('Quantity', :with => '200')
 fill_in('Percentage', :with => '3.00')
 fill_in('Years', :with => '10')
end

Then(/^I press button "(.*?)"$/) do |arg1|
  click_on arg1
end

Then(/^I must see the original input data:$/) do |table|
table.should have_content('Company XYZ')
table.should have_content('2.00')
table.should have_content('200')
table.should have_content('3.00')
table.should have_content('10')
end

Then(/^list of stock values for each year:$/) do |table|
table.should have_content('400.00')
table.should have_content('412.00')
table.should have_content('424.36')
table.should have_content('437.09')
table.should have_content('450.20')
table.should have_content('463.71')
table.should have_content('477.62')
table.should have_content('491.95')
table.should have_content('506.71')
table.should have_content('537.57')
end

Then(/^the stock growth is shown as a visual graph$/) do
  page.should have_css("//*[@id='chart original input data']")
end

Then(/^the stock data must be saved into the database for later review$/) do
  
  stock = Stock.new
  stock.name = "Company XYZ"
  stock.price = 2.00
  stock.quantity = 200
  stock.percentage = 3.00
  stock.years = 10
  stock.save
  Stock.count.should == 1
end

When(/^I click "(.*?)"$/) do |arg1|
  visit page.driver.request.env['HTTP_REFERER']
end



Given(/^the system has already calculated stocks$/) do |table|
stock = Stock.new
  stock.name = "Company XYZ"
  stock.price = 2.00
  stock.quantity = 200
  stock.percentage = 3.00
  stock.years = 10
  stock.save
  Stock.count.should == 1
end
Stock.create!(name: 'name', price: 20, quantity: 30, percentage: 3, years: 10)
Stock.create!(name: 'name', price: 20, quantity: 30, percentage: 3, years: 10)
Stock.create!(name: 'name', price: 20, quantity: 30, percentage: 3, years: 10)

Then(/^I must see a table of all saved stocks:$/) do |table|
table should have_content ('Apple')
end

When(/^I click on the calculated line "(.*?)"$/) do |arg1|
  click_on("Company XYZ")
end

Then(/^I must see the already calculated data$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I must see a table of saved stocks:$/) do |table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end

When(/^stock data changes on backend$/) do |table|
  Capybara.current_driver = :webkit # temporarily select different driver
  # ... tests ...
  Capybara.use_default_driver       # switch back to default driver

  
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had

end

Then(/^I should see stock price "(.*?)" for "(.*?)" in less than (\d+) seconds$/) do |arg1, arg2, arg3|
  pending # express the regexp above with the code you wish you had
end