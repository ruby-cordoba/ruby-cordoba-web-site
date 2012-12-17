#Sign Up steps
Given /^I am at the sign up page$/ do
  visit sign_up_page
end

When /^I sign up with valid credentials$/ do
  sign_up guest
end

Then /^I get a user in the system$/ do
  expect(find_user guest).to be_a(User)
end

Then /^I see a welcome message$/ do
  expect(page).to have_content(welcome_message)
end

When /^I sign up with invalid credentials$/ do
  sign_up invalid_guest
end

Then /^I see an authentication error message$/ do
  expect(page).to have_content(authentication_error_message)
end

Then /^I don't get a user in the system$/ do
  expect(find_user guest).to be_nil
end


#Sign In steps

Given /^I am at the sign in page$/ do
  visit sign_in_page
end

And /^I have an account$/ do
  guest_has_an_account
end

When /^I sign in with valid credentials$/ do
  sign_in guest
end

Then /^I see a successful sign in message$/ do
  expect(page).to have_content(successful_sign_in_message)
end

When /^I sign in with invalid credentials$/ do
  sign_in invalid_guest
end

Then /^I see an invalid sign in message$/ do
  expect(page).to have_content(invalid_sign_in_message)
end