Feature: Search for Pension Info on CAB homepage

  # CAB-NOTE-8
  # You wouldn't test this by going through google. You'd use TIL/TIP
  # to just test the CAB homepage
  @positive
  Scenario: Search for Pension advice on CAB
    Given I am on the CAB homepage
    When I make a search using the CAB search bar for "Pensions"
    Then the CAB search results should include information about Pensions
    And the CAB search results should include information about the State Pension

  @positive
  Scenario: Check out State Pension info on CAB
    Given I am on the CAB homepage
    When I make a search using the CAB search bar for "Pensions"
    And I select the option for State Pension information
    Then I should be presented with detailed information about State Pensions

  @positive
  Scenario: Validate Results are ordered according to accuracy
    Given I am on the CAB homepage
    When I make a search using the CAB search bar for "Pensions"
    Then results should be ordered from most to least relevant

  @negative
  Scenario: Search for bad advice on CAB
    Given I am on the CAB homepage
    When I make a search using the CAB search bar for "Jeff"
    Then the CAB search results should not show any results
