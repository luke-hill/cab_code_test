Feature: Keyword searches on various google sites

  @positive
  Scenario Outline: Search on google.co.uk
    Given I am on the uk google website
    When I make a search for <search_term>
    Then the results should include the Citizens Advice Bureau

    Examples:
      | search_term            |
      | Citizens Advice        |
      | Citizens Advice Bureau |

  @positive
  Scenario Outline: Search on google.de
    Given I am on the german google website
    When I make a search for <search_term>
    Then the results should include the Citizens Advice Bureau

    Examples:
      | search_term            |
      | Citizens Advice        |
      | Citizens Advice Bureau |

  @positive
  Scenario Outline: Search on google.ie
    Given I am on the irish google website
    When I make a search for <search_term>
    Then the results should include the Citizens Advice Bureau

    Examples:
      | search_term            |
      | Citizens Advice        |
      | Citizens Advice Bureau |

  @positive
  Scenario Outline: Search on google.com
    Given I am on the american google website
    When I make a search for <search_term>
    Then the results should include the Citizens Advice Bureau

    Examples:
      | search_term            |
      | Citizens Advice        |
      | Citizens Advice Bureau |
