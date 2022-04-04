public with sharing class AccountController {
    public static List<Account> getAllActiveAccounts() {
        return [SELECT Id,Name,Type FROM Account WHERE Type LIKE '%Partner%'];
        //return [SELECT Id,Name,Type FROM Account LIMIT 5];
        //return [SELECT Id,Name,Type FROM Account WHERE Type = 'Partner/Reseller'];        
      }
}
