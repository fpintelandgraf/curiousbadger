@isTest
public class TestVerifyDate {

    @isTest static void testwithin() {
        Date one = Date.newInstance(2017, 07, 12);
        Date two = Date.newInstance(2017, 07, 20);
        Date resultDate = VerifyDate.CheckDates(one, two);
	}
    
    @isTest static void testwithout() {
        Date one = Date.newInstance(2017, 07, 12);
        Date two = Date.newInstance(2017, 09, 20);
        Date resultDate = VerifyDate.CheckDates(one, two);
	}
}