@isTest
public with sharing class ClassInLocalTest {
    @isTest static void testWarmTempRenamed() {
        Decimal celsius = ClassinScratchOrg.FahrenheitToCelsius(70);
        System.assertEquals(21.11,celsius);
    }
}
