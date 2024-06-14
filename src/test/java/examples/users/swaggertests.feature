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

  Scenario: GET isteği ile java clientı listeleme
    Given path 'gen/clients/java'
    When method get
    Then status 200
    And print response
    # Java içinden dönen group ID'sini alır ve değişkene atar
    * def groupId = response[0]
    #bu sekilde de yazım old göstermek için deneme
    And print response.library
    #bu sekilde de yazım old göstermek için deneme
    And print response.java8

  Scenario: POST isteği ile Java client'ı oluşturma
    Given path 'gen/clients/java'
    And request {spec: {swagger: '2.0',info: {title: 'Swagger Petstore',version: '1.0.0'},paths: {},groupId: '#(groupId)'},options: {lang: 'java'}}
    When method post
    Then status 200
    And print response
