Feature: search a text

  Background:
    Given user is on google homepage

  Scenario: User searches for a text and verifies the result
    And user enters a text and clicks on search
    Then user verifies if he is getting correct result