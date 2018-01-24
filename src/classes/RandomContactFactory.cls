public class RandomContactFactory {
    
    public static List<Contact> generateRandomContacts(Integer numbr, String LastName){
        
        List<Contact> returnContactList = new List<Contact>();
        
        for(Integer i=0;i<numbr;i++) {
            Contact cnt = new Contact(FirstName='n'+i, LastName=LastName);
            returnContactList.add(cnt);
        }
        
        return returnContactList;
    }

}