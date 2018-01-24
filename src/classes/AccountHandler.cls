public class AccountHandler {

    public static Account insertNewAccount  (String nameOfAccount) {
        Account acct = new Account(Name=nameOfAccount);
        try {

        
		insert acct;
            
        } catch (DmlException e) {
    		System.debug('A DML exception has occurred: ' + e.getMessage());
            return null;
		}


 		return acct;
    }

}