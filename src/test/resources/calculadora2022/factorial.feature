Feature: Compute the factorial of a number
  Scenario: Compute the factorial of a number greater than 0
    Given I have a calculator
    When I want to compute the factorial of 4
    Then I should recieve a correct integer 24