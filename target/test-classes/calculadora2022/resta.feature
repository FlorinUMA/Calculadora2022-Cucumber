Feature: Substract two numbers

  Scenario Outline: Subtract a positive amount from a positive number
    Given I have a calculator
    When I want to substract from <a> value <b>
    Then I should recieve a correct <answer>

    Examples: 
      | a  | b   | answer |
      |  2 |   2 |      0 |
      |  0 |   0 |      0 |
      |  8 |   1 |      7 |
      |  3 |   4 |     -1 |
      |  1 |   0 |      1 |
      | 20 | 100 |    -80 |

  Scenario: Subtract a negative amount from a positive number
    Given I have a calculator
    When I want to substract from 8 value -5
    Then I should recieve a correct 13