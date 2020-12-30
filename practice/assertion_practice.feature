Feature: Practice Assertion The Karate Way
  Scenario: Simple assertion for number
    Given def num1 = 10;
    And def num2 = 20;
    Then assert num1+num2 == 30

    #same thing non of the keyword is required unlike cucumber
    # you can start with *
    * def num1 = 10;
    * def num2 = 20;
    * assert num1+num2 == 30

    #if you want to print something
    # you can concate with + ,
    * print 'Hello world' +  num1
    * print 'Hello world' , num2

  Scenario: Working with Simple Json
    * def myJson = { name: 'Seckin', nums: [99,88,77] }
    * print 'Whole Json is' , myJson
    * print 'The name is' , myJson.name
    * print 'The second number is ',myJson.nums[1]
    #some assertions
    * assert myJson.name == 'Seckin'
    * assert myJson.nums[2] == 77