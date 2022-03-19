Feature: Determine if a integer is prime or not
  Scenario: Determine if a number greater than 1 is prime
    Given I have a calculator
    When I want to know if 5 is prime
    Then The program should identify it is a prime number