public class customActivityCtrl {
    @AuraEnabled
    public static List<task> fetchTask(){
        return [SELECT Id,Subject,Description,ActivityDate,Who.Name,WhoId,Priority
                FROM Task
                LIMIT 20];
    }
     @AuraEnabled
    public static List<Event> fetchEvent(){
        return [SELECT Id,Subject,Description,ActivityDateTime,Who.Name,EndDateTime,Location FROM Event
                LIMIT 20];
    }
}