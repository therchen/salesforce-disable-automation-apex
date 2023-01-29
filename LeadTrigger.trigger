trigger LeadTrigger on Lead (before insert, after insert, before update, after update, before delete, after delete, after undelete) {

    //SYSTEM SETTINGS

    Lead_Automation_Setting__c systemSetting = Lead_Automation_Setting__c.getOrgDefaults();

    Boolean systemDisableAll = false;

    Boolean systemDisableApexTriggers = false;

    if(systemSetting != null){

        systemDisableAll = systemSetting.Disable_All__c;

        systemDisableApexTriggers = systemSetting.Disable_Apex_Triggers__c;

    }

    //USER SETTINGS

    Lead_Automation_Setting__c userSetting = Lead_Automation_Setting__c.getInstance(System.UserInfo.getUserId());

    Boolean userDisableAll = false;

    Boolean userDisableApexTriggers = false;

    if(userSetting != null){

        userDisableAll = userSetting.Disable_All__c;

        userDisableApexTriggers = userSetting.Disable_Apex_Triggers__c;

    }

    //DECISION: AUTOMATION ON OR OFF

    if(!systemDisableAll && !systemDisableApexTriggers && !userDisableAll && !userDisableApexTriggers){

        //AUTOMATION IS ON: CONTINUE WITH TRIGGER LOGIC/BUSINESS PROCESS

        if(trigger.isInsert){  

        }

    }

}
