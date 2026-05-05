Feature: Teste API exemplo

Scenario: Buscar usuários
  Given url 'https://dummyjson.com/test'
  When method GET
  Then status 200