Feature: Teste API exemplo

Background:
  * url baseUrl

Scenario: Buscar usuários

  * def body = 
  """
  {
  "email": "fulano@qa.com",
  "password": "teste"
  }
  """

  * path '/login'
  And request body
  When method POST
  Then status 200
  And match response.message == 'Login realizado com sucesso'
  And match response.authorization != null