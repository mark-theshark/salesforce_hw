public with sharing class OpportunityController {
    public static List<Opportunity> getAllOpps() {
        // opps wild card
        //return [SELECT Id,Name,CloseDate FROM Opportunity WHERE Name like 'Van%'];
        // all opps jan-june
        //return [SELECT Id,Name,CloseDate FROM Opportunity WHERE CloseDate >= 2021-01-01 and CloseDate <= 2021-06-30 order by CloseDate desc];
        // lost opps
        //return [SELECT Id,Name,CloseDate,Amount FROM Opportunity WHERE (CloseDate >= 2021-01-01 and CloseDate <= 2021-06-30) and (Name like '% Comm %') and (StageName like '%Lost%') order by CloseDate desc];
        return [SELECT Name,CloseDate,Amount,StageName,NextStep,LeadSource,ForecastCategory,Id FROM Opportunity WHERE (CloseDate >= 2021-01-01 and CloseDate <= 2021-06-30) and (Name like '% Comm %') and (NOT StageName LIKE '%Lost%') order by CloseDate desc];

    }
}
