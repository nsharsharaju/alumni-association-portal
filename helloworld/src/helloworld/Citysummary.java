package helloworld;

public class Citysummary {
	
	private String city;
	private String countcity;
	
	public Citysummary(){
		
	}
	
	public Citysummary(String city, String count){
		this.city=city;
		this.countcity=count;
	}
	
	public String getCity(){
		return this.city;
	}
	
	public String getcountcity(){
		return this.countcity;
	}
	
	public void setCity(String city)
	{
		this.city = city;
	}
	
	public void setCountcity(String countcity)
	{
		this.countcity = countcity;
	}
	

}
