Feature: operate the elements on the sample page

  Scenario: fill in the options
    Given I launch the sample page
    When I fill in the options
    Then I check result

   Scenario: test api
     Given I get the api
     When I analyze the result
     Then I check result