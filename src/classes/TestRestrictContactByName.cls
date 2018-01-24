@isTest
public class TestRestrictContactByName {
    
    @isTest static void TestDeleteAccountWithOneOpportunity() {

        Contact contact = new Contact(LastName = 'INVALIDNAME');
       
        insert contact;
        
       Contact contact1 = new Contact(LastName = 'VAlidLN');
       
        insert contact1;
        //Database.InsertResult result = Database.insert(contact);
        //System.assert(!result.isSuccess());
        //System.assert(result.getErrors().size() > 0);
        //System.assertEquals('Cannot delete account with related opportunities.', result.getErrors()[0].getMessage());
    }
}