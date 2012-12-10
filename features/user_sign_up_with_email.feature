Feature: Sign up with email and pasword
  In order to get access to protected sections of the site
  As an unregistered user
  I want to be able to sign up for an account

    Background:
      Given I am at the landing page

    Scenario Outline: Visitor signs up with valid credentials
      When I sign up with "<Email>", "<Password>" and "<PasswordConfirmation>"
      Then I get an account
      And I see a welcome message

      Examples: Valid Credentials
        | Email          | Password | PasswordConfirmation |
        | foo@bar.com    | secret   | secret               |
        | foo.bar@com.uy | 123345   | 123345               |

    Scenario Outline: Visitor tries to sign up with invalid credentials
      When I sign up with "<Email>", "<Password>" and "<PasswordConfirmation>"
      Then I see an error message
      And I don't get an account

      Examples: Invalid Credentials
        | Email          | Password | PasswordConfirmation |
        | foo@bar.com    |          |                      |
        | foo.bar@com.uy | 123345   |                      |
        | foo.bar@com.uy | 123345   | secret               |
        |                | secret   | secret               |
        | foo.bar        | secret   | secret               |