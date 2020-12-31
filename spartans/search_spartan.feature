Feature: Searching Spartan by name and gender
  Background:
    * url spartan_base_url
  Scenario: User should be able to search
    Given path '/api/spartans/search'
    And param nameContains = 'a'
    And param gender = 'Female'
    When method get
    Then status 200
    # verify all gender field is Female
    * match each response.content[*].gender == 'Female'
    * def responseToLowerCase = karate.lowerCase(response)
    * match each responseToLowerCase.content[*].name contains "a"
    #Virginia
    * match response.content[3].name contains 'a'
    #ABC
    * match response.content[0].name contains 'A'
