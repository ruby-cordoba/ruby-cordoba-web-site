Feature: Sign out
	In order to protect my account from unauthorized access
	As signed in user
	I want to be able to sign out

	Background:
		Given I have an account

	Scenario: User signs out
		Given I am signed in
	    When I sign out
	    Then I see a signed out message
	    And I don't see my email and sign out link