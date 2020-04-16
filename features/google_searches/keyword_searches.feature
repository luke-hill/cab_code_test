Feature: Google Keyword searches for CAB

  # CAB-NOTE-7
  # This scenario fails, which surprised me. Perhaps one for your SEO team to investigate?
  @positive @failing
  Scenario: Search for CAB acronym
    Given I am on the uk google website
    When I make a search for CAB
    Then the results should include the Citizens Advice Bureau

  @positive
  Scenario: Search for Citizens Advice Bureau
    Given I am on the uk google website
    When I make a search for Citizens Advice Bureau
    Then the results should include the Citizens Advice Bureau

  @positive
  Scenario: Search for full citizens advice url
    Given I am on the uk google website
    When I make a search for https://www.citizensadvice.org.uk/
    Then the results should include the Citizens Advice Bureau

  @negative
  Scenario: Search for CBA acronym
    Given I am on the uk google website
    When I make a search for CBA
    Then the results should not include the Citizens Advice Bureau

