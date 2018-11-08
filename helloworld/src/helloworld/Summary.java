package helloworld;

import java.util.*;

public class Summary {
	
	private ArrayList<Citysummary> list1 ;
	private ArrayList<Researchsummary> list2;
	
	public Summary(){
		
	}
	
	public Summary(ArrayList<Citysummary> list1,ArrayList<Researchsummary> list2){
		this.list1=list1;
		this.list2=list2;
	}
	
	public ArrayList<Citysummary> getList1()
	{
		return this.list1;
	}
	
	public ArrayList<Researchsummary> getList2()
	{
		return this.list2;
	}
	
	public void setList1(ArrayList<Citysummary> list1)
	{
		this.list1 = list1;
		
	}
	
	public void setList2(ArrayList<Researchsummary> list2)
	{
		this.list2 = list2;
	}
	
	
	

}
