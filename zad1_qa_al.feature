Feature: 

Scenario Outline: Successful log in from application
		Given I  on start page
		When I click “log in” button     
		And I enter the login as <login>     
		And I enter the password as <correct-password>
		And I click button ,,Login"
		Then login completed successfully
		
		Examples:
 
        | login			| correct-password	|

        | Agata@email.pl	| 123456         	|

        | Joe@email.pl      	| qwerty         	|	
		
		
		
	Scenario Outline: Log in from application with incorrect password	
		Given I on start page
		When I click “Sign in” button     
		And I enter the login as <login>     
		And I enter the password as <incorrect-password>
		And I click button ,,Login"
		Then Error message "Authentication failed. Login or password are incorrect." is displayed.
			 
	Examples:
 
        | login		| incorrect-password	|

        | Agata@email.pl| 123447		|

        | Joe@email.pl	| qwertu         	|	
		
		

	Scenario Outline: Log in from application with non-existent login
		Given I on start page
		When I click “Sign in” button     
		And I enter the login as <login>     
		And I enter the password as <correct-password>
		And I click button ,,Login"
		Then Error message "Authentication failed. Login or password are incorrect" is displayed.
			 
	Examples:
 
        | login			| correct-password	|

        | Agata12@email.pl	| 123456        	|

        | Joe12@email.pl	| qwerty         	|	
		
		
		
	

	Scenario: Test account details view
		Given I  login in application
        When I click “account details” button     
		Then I see all my information: name, surname, email address,mailing address 
		And All my information are correct
		
