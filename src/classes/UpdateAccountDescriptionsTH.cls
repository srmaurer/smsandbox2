/*	UpdateAccountDescriptionsTH.class
	Trigger for the account object.
	-----------------------------------------------------------------------------------------------------------
	Author              Date        Release   Description
	-----------------------------------------------------------------------------------------------------------
	Stefan Maurer       10/02/2013  1.00.00   Created
*/
public class UpdateAccountDescriptionsTH {
	public static void updateAccountDescription(List<Contact> newContacts, Map<Id, Contact> oldContactMap){
		List<Account> accountUpdateList = new List<Account>();
		for(Contact c : newContacts){
			accountUpdateList.add(new Account(Id = c.AccountId, Description = c.Description));
		}
		update accountUpdateList;
	}
}