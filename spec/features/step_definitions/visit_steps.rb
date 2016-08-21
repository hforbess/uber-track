Given(/^I am on the visit$/) do
  visit "\"
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  expect( page ).to have_content "eConstructors" 
end

