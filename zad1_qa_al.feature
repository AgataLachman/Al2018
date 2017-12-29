Feature: Successful log in from application

Scenario: 
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
		
		
		
Feature: Log in from application with incorrect password	
		
	Scenario:
		Given I on start page
		When I click “Sign in” button     
		And I enter the login as <login>     
		And I enter the password as <incorrect-password>
		And I click button ,,Login"
		Then statement:"Authentication failed. Login or password are incorrect."
			 
	Examples:
 
        | login		| incorrect-password	|

        | Agata@email.pl| 123447		|

        | Joe@email.pl	| qwertu         	|	
		
		
		
Feature: Log in from application with non-existent login	
		
	Scenario:
		Given I on start page
		When I click “Sign in” button     
		And I enter the login as <login>     
		And I enter the password as <correct-password>
		And I click button ,,Login"
		Then statement:"Authentication failed. Login or password are incorrect."
			 
	Examples:
 
        | login			| correct-password	|

        | Agata12@email.pl	| 123456        	|

        | Joe12@email.pl	| qwerty         	|	
		
		
		
Feature: Registration in the application
		
	Scenario:
		Given I on start page
		When I click “Register” button     
		And I enter the login as <new-login>     
		And I enter the password as <new-password>
		And I click button ,,Register"
		Then Registration is completed
	Examples:
 
        | new-login		| new-password	|

        | user3@email.pl    	| 123456        |

        | user4@email.pl    	| qwerty	|				 

		
		
Feature: Registration in the application with login which is not e-mail
		
	Scenario:
		Given I on start page
		When I click “Register” button     
		And I enter the login as <new-login>     
		And I enter the password as <new-password>
		And I click button ,,Register"
		Then statement:"Registration failed. Login are incorrect."
	Examples:
 
        |	new-login	|	new-password	|

        |	user3    	|	123456        |

        |	user4    	|	qwerty        |	
		
		
Feature: Registration in the application with too long login
		
	Scenario:
		Given I on start page
		When I click “Register” button     
		And I enter the login as <new-login>     
		And I enter the password as <new-password>
		And I click button ,,Register"
		Then statement:"Registration failed. Login are incorrect."
		
	Examples:
 
        | new-login							| new-password	|

        | user12345689012345678901234567890123456789012345789023456780	|	123456		|

        | user12345689012345678901234567890123456789012345789023456780	|	qwerty		|
		
		
Feature: Test account details view

	Scenario: 
		Given I  login in application
        When I click “account details” button     
		And I see all my information: name, surname, email address,mailing address 
		Then All my information are correct
		
