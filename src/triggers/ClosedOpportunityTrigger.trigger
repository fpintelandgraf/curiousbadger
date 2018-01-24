trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    List<Task> taskListToBeCreated = new List<Task>();
    for(Opportunity opp : [SELECT Id,Name,CloseDate,StageName FROM Opportunity WHERE Id IN :Trigger.New]) {
             if (opp.StageName == 'Closed Won'){
                Task newTask = new Task();
                newTask.WhatId = opp.Id;
                newTask.Subject = 'Follow Up Test Task';
                taskListToBeCreated.add(newTask);
            }
    }
    
    insert taskListToBeCreated;
}