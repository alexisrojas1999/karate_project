Feature: Service client GET
  As QA Automation
  I want to consult a client
  To validate the status code and response

  Background: consume service
    * url url

  Scenario: Check the service GET method
    * def responsesGet = read('classpath:karate/request/responseGet.json')
    Given path 'users','2'
    When method get
    Then status 200
    And match response == responsesGet
    And assert response.support.text == "To keep ReqRes free, contributions towards server costs are appreciated!"
    And assert response.data.email == email
    And assert response.data.first_name == firstname
    And assert response.data.last_name == lastname
    And assert response.data.avatar == avatar

  Scenario Outline:Find users with IDs that do not exist in the data

    Given path 'users',<idUser>
    When method get
    Then status 404

    Examples:
      | idUser    |
      | 2002      |
      | "@#*/.&"  |
      | "Miguel"  |
      | "ASDF89*" |
