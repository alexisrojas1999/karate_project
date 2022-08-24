Feature: Delete a pet
  As QA automation
  I want to delete a pet
  To validate the status code and response

  Background: consume service
    * url url

  Scenario Outline: Delete a pet with a invalid Id

    * def idPet = <id>

    Given path 'users', idPet
    When method Delete
    Then status <code>
    And match response == <expected>

    Examples:
      |id  |code|expected|
      |701 |204 |''    |
      |'gain'|204 |''    |
      | ''   |204 |''    |