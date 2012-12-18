Feature: Sign in
	In order to get access to protected sections of the site
	As a guest
	I want to be able to sign in

	Background:
		Given I am at the sign in page
		And I have an account

     Scenario: Guest signs in with valid credentials
     	When I sign in with valid credentials
		Then I see a successful sign in message
		And I see my email and sign out link

     Scenario: Guest signs in with invalid credentials    
		When I sign in with invalid credentials
	    Then I see an invalid sign in message
	    And I don't see my email and sign out link