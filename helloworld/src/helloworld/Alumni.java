package helloworld;

import java.sql.*;

public class Alumni extends User{
	
	private String company;
	private String research;
	private String previouscompany;
	private String city;
	private String contactno;
	private String position;
	private String emailid;

	
	
	public Alumni()
	{
		
	}
	
	public Alumni(String name,String company,String research,String city,String previouscompany,String rollno,String password,String position,
			String contactno,String emailid)
	{
		super(rollno,password,name);
		this.company = company;
		this.research = research;
		this.city= city;
		this.position = position;
		this.contactno = contactno;
		this.emailid = emailid;
		this.previouscompany = previouscompany;
	}
	
	public String getCity()
	{
		return this.city;
	}
	
	public String getCompany()
	{
		return this.company;
	}
	
	public String getContactno()
	{
		return this.contactno;
	}
	
	public String getResearch()
	{
		return this.research;
	}
	
	public String getEmailid()
	{
		return this.emailid;
	}
	
	public String getPosition()
	{
		return this.position;
	}
	
	public String getPreviouscompany()
	{
		return this.previouscompany;
	}
	
	public void setPreviouscompany(String previouscompany)
	{
		this.previouscompany = previouscompany;
	}
	
	public void setCompany(String company)
	{
		this.company = company;
	}
	
	public void setPosition(String position)
	{
		this.position = position;
	}
	
	public void setResearch(String research)
	{
		this.research = research;
	}
	
	public void setCity(String city)
	{
		this.city = city;
	}
	
	public void setContactno(String contactno)
	{
		this.contactno = contactno;
	}
	
	public void setEmailid(String emailid)
	{
		this.emailid= emailid;
	}
	
public void signup(Alumni a){
	 Connection conn = Jdbcconnection.conn;
	 try
	 {
	      Statement stmt = conn.createStatement();
	      stmt.executeUpdate("CREATE TABLE IF NOT EXISTS alumni(name varchar(20),company varchar(20),research varchar(20),city varchar(20),previouscompany varchar(20),"
	      		+ "rollno varchar(20),password varchar(20),position varchar(20),contactno varchar(20),emailid varchar(20))");
	      stmt.close();
	      
	      PreparedStatement pstmt = conn.prepareStatement("insert into alumni values (?,?,?,?,?,?,?,?,?,?)");
	      pstmt.setString(1,a.getName());
	      pstmt.setString(2,a.getCompany()); 
	      pstmt.setString(3,a.getResearch());
	      pstmt.setString(4,a.getCity());
	      pstmt.setString(5,a.getPreviouscompany());
	      pstmt.setString(6,a.getRollno());
	      pstmt.setString(7,a.getpassword());
	      pstmt.setString(8,a.getPosition());
	      pstmt.setString(9,a.getContactno());
	      pstmt.setString(10,a.getEmailid());
	      
	      pstmt.executeUpdate();
	      
	 }	      
	      catch(SQLException exc1){
	  	        exc1.printStackTrace();
	  	    }
}



public boolean post(String user,String p)
     {  
    	 
    	 Connection conn = Jdbcconnection.conn;
    	 try
    	 {
		      Statement stmt = conn.createStatement();
		      stmt.executeUpdate("CREATE TABLE IF NOT EXISTS newsfeed(user varchar(20),postdate TIMESTAMP not null default CURRENT_TIMESTAMP,post varchar(200))");
		      stmt.close();
		      
    		  
    		  PreparedStatement pstmt = conn.prepareStatement("insert into newsfeed(user,post) values(?,?)");
              pstmt.setString(1, user);
              pstmt.setString(2,p);
              pstmt.executeUpdate();
              return true;
              
    	 }
    	 catch(SQLException exc1){
  	        exc1.printStackTrace();
  	        return false;
  	    }
    		  
    		  
    	 }

public void update(String selection,String rollno,String kotha){
	Connection conn = Jdbcconnection.conn;
	try{
	      PreparedStatement pstmt = conn.prepareStatement("update alumni set "+selection+" = ? where rollno = ?");
	      pstmt.setString(1,kotha);
	      pstmt.setString(2,rollno);
	      System.out.println(pstmt.executeUpdate());
	}
	catch(SQLException exc1){
        exc1.printStackTrace();
        }
	
	}
    
}
    

