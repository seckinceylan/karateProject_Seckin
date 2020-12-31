Feature:  Searching Movie from open DB

  Background:
    * url 'http://www.omdbapi.com/'
    * param apiKey = '6fff7f5a'

  Scenario: search single movie
    Given param t = 'Wonder Woman : 1984'
    When method get
    Then  status 200
    #assert 3-5 fields here
    * assert response.Title =='Wonder Woman 1984'
    * assert response.Year == '2020'
    * assert response.Released == '25 Dec 2020'

    * match response.Year == '2020'
    * match response.Runtime == '151 min'
    * match response.Rated == 'PG-13'
    * match response.Director == 'Patty Jenkins'

    * match response.Rated contains 'PG'

  Scenario Outline: search for multiple movie with example table
    Given param t = '<movie_name>'
    When method get
    Then  status 200
    And match response.Year == '<year>'

    Examples:
      | movie_name                     | year |
      | Wonder Woman : 1984            | 2020 |
      | Life is beautiful              | 1997 |
      | Bad Boys for Life              | 2020 |
      | The Godfather                  | 1972 |
      | The Good, the Bad and the Ugly | 1966 |


