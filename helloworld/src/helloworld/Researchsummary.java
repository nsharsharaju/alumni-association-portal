package helloworld;

public class Researchsummary {
	
	private String research;
	private String researchcount;
	
public Researchsummary(){
	
}

public Researchsummary(String researchcount ,String research  ){
	this.researchcount=researchcount;
	this.research=research;
}

public String getresearch(){
	return this.research;
}

public String getresearchcount(){
	return this.researchcount;
}

public void setResearch(String research)
{
	this.research = research;
}

public void setResearchcount(String researchcount)
{
	this.researchcount = researchcount;
}

}
