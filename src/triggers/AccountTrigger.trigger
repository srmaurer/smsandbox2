/*	AccountTrigger.trigger
	Trigger for the account object.
	-----------------------------------------------------------------------------------------------------------
	Author              Date        Release   Description
	-----------------------------------------------------------------------------------------------------------
	Stefan Maurer       10/02/2013  1.00.00   Created
*/
trigger AccountTrigger on Account (after delete, after insert, after undelete, after update, before delete, before insert, before update) {
	if(trigger.isBefore){
		if(trigger.isInsert){
			
		}
		else if(trigger.isUpdate){
			
		}
	}
}