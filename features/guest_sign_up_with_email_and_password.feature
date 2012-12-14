Feature: Sign up with email and password
  In order to get access to protected sections of the site
  As a guest
  I want to be able to sign up for an account

    Background:
      Given I am at the sign up page

    Scenario: Guest signs up with valid credentials
      When I sign up with valid credentials
    #   Then I get an account
    #   And I see a welcome message

    # Scenario: Guest tries to sign up with invalid credentials
    #   When I sign up with invalid credentials
    #   Then I see an error message
    #   And I don't get an account
