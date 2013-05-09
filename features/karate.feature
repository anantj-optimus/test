Feature: Traditional india

Scenario: Where is india?
            	Given I navigate to Google
	When I enter asia into the search field
	Then the text India should be present
