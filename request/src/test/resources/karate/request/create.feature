Feature: Service cliente POST
  AS QA Automation
  I want to create a client
  To validate the status code and response

  Background:
    * url url

  Scenario: check the service POST method
    * def requestCreate = {"name": "#(name)", "job": "#(job)", "id": "#(id)"}


    Given path 'users'
    And request requestCreate
    When method post
    Then status 201
    And assert response.name == "morpheus"
    And assert response.job == "leader"
    And assert response.id == id

  Scenario Outline: Validate the id using unsupported data types.

    Given path 'users'
    And request <id>
    When method post
    Then status 201

    Examples:
      | id          |
      | 0.578955544 |
      | "@##$"      |
      | "ABCDVB"    |
      | "******"    |