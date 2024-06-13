Feature: sample karate test script
  # Test Otomasyonu - API
  # API isteğinin sonucunun(http status) kontrolünü gerçekleştiren bir API testi yazınız.
  # Örnek url: http://generator.swagger.io
  # Tarafınızdan seçilecek birer tane GET ve POST endpointleri için Http status code 200 verirse başarılı,
  # değilse başarısız olarak rapor edilmelidir.
  # Örnek api call edilirken response da örnek bir değer değişken aracılığı ile taşınarak
  # örnek bir get request içinde kullanılmalıdır.
  Background:
    * url 'http://generator.swagger.io/api'

  Scenario: get all users and then get the first user by id
    Given path 'gen/clients/ada'
    When method get
    Then status 200

    * def projectName = response[4]

    Given path 'gen/clients/tulay', projectName.id
    When method post
    Then status 200

  Scenario: create a user and then get it by id
    * def user =
      """
      {
        "name": "Test User",
        "username": "testuser",
        "email": "test@user.com",
        "address": {
          "street": "Has No Name",
          "suite": "Apt. 123",
          "city": "Electri",
          "zipcode": "54321-6789"
        }
      }
      """

    Given url 'https://jsonplaceholder.typicode.com/users'
    And request user
    When method post
    Then status 201

    * def id = response.id
    * print 'created id is: ', id

    Given path id
    # When method get
    # Then status 200
    # And match response contains user


