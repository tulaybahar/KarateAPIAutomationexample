Feature: sample karate test script
  # Test Otomasyonu - API
  # API isteğinin sonucunun(http status) kontrolünü gerçekleştiren bir API testi yazınız.
  # Örnek url: http://generator.swagger.io
  # Tarafınızdan seçilecek birer tane GET ve POST endpointleri için Http status code 200 verirse başarılı,
  # değilse başarısız olarak rapor edilmelidir.
  # Örnek api call edilirken response da örnek bir değer değişken aracılığı ile taşınarak
  # örnek bir get request içinde kullanılmalıdır.

    Background:
    * url 'https://generator.swagger.io/api/'

  Scenario: GET isteği ile mevcut client'ları listeleme
    Given path 'gen/clients'
    When method get
    Then status 200
    And print response
    * def clientId = response[0]
    * match response.clientId == 'clientId'
  #İlk client ID'sini alır ve değişkene atar

  Scenario: POST isteği ile Java client'ı oluşturma
    Given path 'gen/clients/java'
    And request {spec: {swagger: '2.0',info: {description: 'This is a sample server Petstore server.',version: '1.0.0',title: 'Swagger Petstore',termsOfService: 'http://swagger.io/terms/',contact: {email: 'apiteam@swagger.io'},license: {name: 'Apache 2.0',url: 'http://www.apache.org/licenses/LICENSE-2.0.html'}},options: {lang: 'java',clientId: '#(clientId)'}}}
    When method post
    Then status 200
    And print response


