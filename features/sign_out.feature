Feature: Sign out
	In order to protect my account from unauthorized access
	As signed in user
	I want to be able to sign out

	Scenario: User signs out
		Given I am logged in
	    When I sign out
	    Then I should see a signed out message