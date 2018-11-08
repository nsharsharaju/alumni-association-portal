package helloworld;

import java.sql.*;

public class User {
	
	protected String rollno;
	protected String password;
	protected String name;

	
	public User()
	{
		
	}
	
	public User(String rollno,String password,String name )
	{
		this.rollno = rollno;
		this.password = password;
		this.name = name;
		
	}
	
	public String getName()
	{
		return this.name;
	}
	
	public String getRollno()
	{
		return this.rollno;
	}
	
	public String getpassword()
	{
		return this.password;
	}
	
		
	public void setName(String name)
	{
		this.name = name;
	}
	
	public void setRollno(String rollno)
	{
		this.rollno = rollno;
	}
	
	public void setPassword(String password)
	{
		this.password = password;
	}
	
		
	public BracketlessArrayList<Alumni> search(String selection,String vsa)
	{
	   Connection conn = Jdbcconnection.conn;
	   BracketlessArrayList<Alumni> list = new BracketlessArrayList<Alumni>();
	   
	   try{
		      
		      Statement stmt = conn.createStatement();
		      stmt.executeUpdate("CREATE TABLE IF NOT EXISTS alumni(name varchar(20),company varchar(20),research varchar(20),city varchar(20),previouscompany varchar(20),"
		      		+ "rollno varchar(20),password varchar(20),position varchar(20),contactno varchar(20),emailid varchar(20))");
		      stmt.close();
		      
		      PreparedStatement pstmt = conn.prepareStatement("select * from alumni where "+selection+" LIKE ? ORDER BY name ASC");
		      pstmt.setString(1,"%"+vsa+"%");
		      ResultSet rs = pstmt.executeQuery();
		      
		      //Storing the results in array list
		      while(rs.next()){
		            list.add(new Alumni(rs.getString("name"),rs.getString("company"),rs.getString("research"),
		            		rs.getString("city"),rs.getString("previouscompany"),rs.getString("rollno"),rs.getString("password"),rs.getString("position"),
		            		rs.getString("contactno"),rs.getString("emailid")));  
		         }
		      
		      //Clean-up environment
		      rs.close();
		      
		      return list;
		      
	     }  
	   catch(SQLException exc1){
	        exc1.printStackTrace();
	        return null;
	   }
	    
	}
	
	public ResultSet login(String rollno,String password,String who)
	{
		Connection conn = Jdbcconnection.conn;
		try
		{    
		      PreparedStatement pstmt = conn.prepareStatement("select * from "+who+" where rollno=? and password=?");
		      pstmt.setString(1,rollno);
		      pstmt.setString(2,password);
		      ResultSet result = pstmt.executeQuery();
		      
		      return result;
			
		}
		catch(SQLException exc1){
			System.out.print(exc1);
	        exc1.printStackTrace();
	        return null;
	    }
	}
         public boolean changepassword(String rollno,String opass,String npass,String who)
         {
        	  
        	 Connection conn = Jdbcconnection.conn;
        	 try
     		{
     		      PreparedStatement pstmt = conn.prepareStatement("select * from "+who+" where rollno=? and password=?");
                  pstmt.setString(1, rollno);
                  pstmt.setString(2,opass);
                  
                  
                  ResultSet rs = pstmt.executeQuery();
                  
                  
                  if(rs.next()==true)
                  {  System.out.println(who);
                     System.out.println(npass);
                     System.out.println(rollno);
                	 pstmt = conn.prepareStatement("update "+who+" set password = ? where rollno = ?");
                	 pstmt.setString(1,npass);
                	 pstmt.setString(2,rollno);
                	 pstmt.executeUpdate();
           
                	 
                	 return true;
                  }
                  
                  else {
                	  
                	  return false;
                  }
     		}
        	 catch(SQLException exc1){
     	        exc1.printStackTrace();
     	        return false;
     	    }
        	 
        	 
        	 
         }
         
   
    
    public BracketlessArrayList<Newsfeed> retrivefeed()
    {
 	   Connection conn = Jdbcconnection.conn;
 	   BracketlessArrayList<Newsfeed> list = new BracketlessArrayList<Newsfeed>();
 	   
 	   try{
 		      
 		      Statement stmt = conn.createStatement();
		      stmt.executeUpdate("CREATE TABLE IF NOT EXISTS newsfeed(user varchar(20),postdate TIMESTAMP not null default CURRENT_TIMESTAMP,post varchar(200))");
		      stmt.close();
 		      
 		      
 		      
 		      PreparedStatement pstmt = conn.prepareStatement("select * from newsfeed ORDER BY postdate DESC");
 		      ResultSet rs = pstmt.executeQuery();
 		      
 		      //Storing the results in array list
 		      while(rs.next()){
 		            list.add(new Newsfeed(rs.getString("user"),rs.getString("postdate"),rs.getString("post")));  
 		         }
 		      
 		      //Clean-up environment
 		      rs.close();
 		      
 		      return list;
 		      
 	     }  
 	   catch(SQLException exc1){
 	        exc1.printStackTrace();
 	        return null;
 	   }
 	    
 	}
}
    

