Feature: Add two numbers
  I want to add two numbers with my calculator

  Scenario Outline: Adding two positive real numbers without decimals
    Given I have a calculator
    When I want to add <a> and <b>
    Then I should recieve a correct <answer>

    Examples: 
      | a  | b   | answer |
      |  2 |   2 |      4 |
      |  0 |   0 |      0 |
      |  1 |   1 |      2 |
      |  3 |   3 |      6 |
      |  1 |   0 |      1 |
      | 20 | 100 |    120 |

  Scenario Outline: Adding one positive real number and one negative real number with decimals
    Given I have a calculator
    When I want to add <a> and <b>
    Then I should recieve a correct <answer>

    Examples: 
      | a     | b   | answer |
      |    -1 |   2 |      1 |
      |     0 |   0 |      0 |
      |     1 |  -1 |      0 |
      |     3 |  -8 |     -5 |
      |     1 |   0 |      1 |
      | -20.5 | 140 |  119.5 |
