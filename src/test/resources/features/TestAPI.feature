Feature: Tests api

  Scenario: test GET
    #  mettre cette ligne Given url 'https://jsonplaceholder.typicode.com/posts/1' ou mettre la variable urlServeur qu'on a déclarer dans karate-config.js, on a déclarer le lien la bas et on a fait appel ici
    Given url urlServeur
    # dans le path on fait appel a la suite du lien https://jsonplaceholder.typicode.com/posts/1' donc ona declarer dans carate lurl serveur qui est juste https://jsonplaceholder.typicode.com et la suite dépends des methodes on l'as rajoute avec And path....
    And path '/posts/1'
    And method GET
    Then status 200
    And print response


    Scenario: test POST
      Given url urlServeur
      And path '/posts'
      And request
      """{
    title: 'foo',
    body: 'bar',
    userId: 1
    }
      """
      And method POST
      Then status 201



  Scenario: test PUT
    Given url urlServeur
    And path '/posts/4'
    And request
      """{

    title: 'wafaa',
    body: 'bbbb',
    userId: 4,
    }
      """
    And method PUT
    Then status 200
    And print response




    Scenario:
      Given url "https://reqres.in/api/users?page=1"
      And method GET
      And match response.data[0].email == "george.bluth@reqres.in"
      And print response

  
