Given(/^I am on the sign up page$/) do
  visit "/users/sign_up"
end

When(/^I fill in "([^"]*)" with "([^"]*)" and "([^"]*)" with "([^"]*)" and "([^"]*)" with "([^"]*)" and click "([^"]*)"$/) do |arg1, arg2, arg3, arg4, arg5, arg6, arg7|
  fill_in arg1, :with => arg2
  fill_in arg3, :with  => arg4
  fill_in arg5,:with =>  arg6
  click_button arg7 
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  expect( page ).to have_content arg1 
end

