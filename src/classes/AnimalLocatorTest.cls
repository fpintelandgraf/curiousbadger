@isTest
private class AnimalLocatorTest {

    @isTest static void testPostCallout() {
        // Set mock callout class EDITED Locally NEW
        Test.setMock(HttpCalloutMock.class, new OneAnimalHttpCalloutMock()); 
        // This causes a fake response to be sent
        // from the class that implements HttpCalloutMock. 
        HttpResponse response = AnimalLocator.getAnimalNameById(1);
        // Verify that the response received contains fake values
        String contentType = response.getHeader('Content-Type');
        System.assert(contentType == 'application/json');
        String actualValue = response.getBody();
        System.debug(response.getBody());
        String expectedValue = '{"animal":{"id":2,"name":"bear","eats":"berries, campers, adam seligman","says":"yum yum"}}';
        System.assertEquals(actualValue, expectedValue);
        System.assertEquals(200, response.getStatusCode());
    }
}