Feature: Multiply two numbers

  Scenario: Multiply positive numbers
    Given I have a calculator
    When I want to multiply 8 and 8
    Then I should recieve a correct 64
