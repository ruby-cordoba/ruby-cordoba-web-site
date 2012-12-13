Feature: Edit user profile
	In order to keep my profile info up to date
	As a user
	I want to be able to edit my profile

    Scenario Outline: User logs in and successfully updates his profile
    	Given I am a <User>
		When I visit my profile settings page
		And update my profile information
		Then I see my profile updated

		Examples: User Roles
			| User  	|
			| Developer |
			| Admin		|