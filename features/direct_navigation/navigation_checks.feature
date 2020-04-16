Feature: Navigation checks on CAB site

  # My philosophy with BDD writing is you want the tests to be as user centric as possible
  # So terms such as should be correct are correct here because under the hood exposes code that
  # a BA or PO wouldn't care about. They just want to know they are correct.Scenario:

  # For an individual check, you would want the individual check exposing, so I've shown how
  # You could write both types of explicit / implicit check

  @positive
  Scenario: Navigate to CAB homepage from google
    Given I am on the uk google website
    When I make a search for Citizens Advice Bureau
    And I navigate to the CAB home page
    Then I should be on the CAB homepage

  # Note this test changes slightly on responsive view with last link.
  # As such I maximise the window before each running test
  @positive
  Scenario: Navigate to CAB homepage and validate navigation links
    Given I am on the uk google website
    When I make a search for Citizens Advice Bureau
    And I navigate to the CAB home page
    Then the navigation links at the top should be all correct

  @positive
  Scenario Outline: Navigate to CAB homepage and validate a single navigation link
    Given I am on the uk google website
    When I make a search for Citizens Advice Bureau
    And I navigate to the CAB home page
    Then the navigation links at the top should include <navigation_option>

    Examples:
      | navigation_option |
      | Benefits          |
      | Consumer          |
      | Housing           |
