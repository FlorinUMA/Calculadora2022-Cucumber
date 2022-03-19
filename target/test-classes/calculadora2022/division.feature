Feature: Divide two numbers

  Scenario: Divide positive numbers greater than 0
    Given I have a calculator
    When I want to divide 14 by 7
    Then I should recieve a correct 2
	Scenario: Trying to divide by zero
		Given I have a calculator
		When I want to divide any number by zero
		Then I should not be able to divive by zero