public class ContactSearch {
    public static List<Contact> searchForContacts (String lastName, String postalCode) {
        
        List<Contact> contact = new List<Contact>();
        
        for (Contact tmp : [SELECT Id, LastName FROM Contact WHERE LastName=:lastname]) {	
			contact.add(tmp);
		}

        return contact;
    }
}