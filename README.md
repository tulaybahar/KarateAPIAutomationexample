# KarateAPIAutomationexample

**Description**

This project is an example of API automation testing using the Karate framework. It demonstrates how to perform both GET and POST requests to the Swagger API.

**Key Technologies Used:**

Karate: A test automation framework for API testing.
Swagger API: Used for testing GET and POST methods on the Swagger generator API.
Swagger API Endpoints:
GET /gen/clients/java: Fetches the list of supported languages for client generation.
POST /gen/clients/java: Generates a Java client for a given Swagger definition.
Project Structure:
src/test/java/examples/users/swaggertests.feature:
swagger.tests.feature , contains the test scenarios for the Swagger API, including both GET and POST requests.


**Running the Tests:**


To run the tests, execute the swaggertests.feature file using the Karate framework. Ensure that you have all dependencies correctly configured in your build tool (e.g., Maven)

**Viewing Test Reports:**


After running the tests, you can find the test reports in the target/karate-reports directory. Open the karate-summary.html file in your browser to view the test results.

