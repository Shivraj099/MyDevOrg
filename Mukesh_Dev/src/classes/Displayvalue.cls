public with sharing class Displayvalue {

    public string inputname{get;set;}
    public string inputnumber{get;set;}
    List<account> actlist = new List<account>();
    List<account> Toupdatelist = new List<account>();
    
    public void savedata(){
    
    actlist = [SELECT name,site,Phone FROM account where Rating like '%cold'];
    
    for(account a:actlist){
      a.Site= inputname;
      a.Phone = inputnumber;
      Toupdatelist.add(a);
    }
   
    update Toupdatelist;
    
    }
}