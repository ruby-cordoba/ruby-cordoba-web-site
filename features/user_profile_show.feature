Feature: Show user profile
	In order to provide information about myself
   	As a user
	I want to be able show my profile

    Scenario Outline: Show user profile
    	Given I am a <User>
       	When A guest visits my profile
       	Then I show my profile

    	Examples: User Roles
        	| User     	|
        	| Developer	|