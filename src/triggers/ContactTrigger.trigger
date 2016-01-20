/*	ContactTrigger.trigger
	Trigger for the contact object.
	-----------------------------------------------------------------------------------------------------------
	Author              Date        Release   Description
	-----------------------------------------------------------------------------------------------------------
	Stefan Maurer       10/02/2013  1.00.00   Created
*/
trigger ContactTrigger on Contact (after delete, after insert, after undelete, after update, before delete, before insert, before update) {
	if(trigger.isAfter){
		if(trigger.isInsert){
			UpdateAccountDescriptionsTH.updateAccountDescription(trigger.new, trigger.OldMap);
		}
		else if(trigger.isUpdate){
			UpdateAccountDescriptionsTH.updateAccountDescription(trigger.new, trigger.OldMap);
		}
	}
}