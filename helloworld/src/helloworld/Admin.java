package helloworld;

import java.sql.*;

import java.util.*;


public class Admin extends User {
	
	public Admin() {
		
	}

	public Admin(String name,String rollno,String password ){
		super(rollno,password,name);
		}

	
	public boolean delect(String rollno){
		Connection conn = Jdbcconnection.conn;
		try{
		      
		      PreparedStatement ptsmt = conn.prepareStatement("select * from alumni where rollno = ?");
		      ptsmt.setString(1,rollno);
		      ResultSet rs = ptsmt.executeQuery();
		      if(rs.next())
		      {
		      PreparedStatement pstmt = conn.prepareStatement("delete from alumni where rollno=?");
		      pstmt.setString(1,rollno);
		      pstmt.executeUpdate();
		      return true;
		      }
		      
		      else{
		    	  return false;
		      }
		}
		catch(SQLException exc1){
	        exc1.printStackTrace();
	        return false;
	        }
		
		}
	
	
	
   public Summary retrieveSummary(){
		
		Connection conn = Jdbcconnection.conn;
		try{
		      
              ArrayList<Citysummary> list1 = new ArrayList<Citysummary>();
		      
		      ArrayList<Researchsummary> list2 = new ArrayList<Researchsummary>();
		      
		      PreparedStatement pstmt = conn.prepareStatement("select city,count(city) from alumni group by city ORDER BY count(city) DESC");
		      pstmt.executeQuery();
		      ResultSet rs=pstmt.executeQuery();
		      
		      while(rs.next())
		      {
		    	  list1.add(new Citysummary(rs.getString("city"),rs.getString("count(city)")));
		  
		      }
		      
		      PreparedStatement pstmt1 = conn.prepareStatement("select research,count(research) from alumni group by research ORDER BY count(research) DESC");
		      pstmt.executeQuery();
		      ResultSet rs1=pstmt1.executeQuery();
		      
		      
		      while(rs1.next()){
		    	  
		    	  list2.add(new Researchsummary(rs1.getString("count(research)"),rs1.getString("research")));
		      }
		      
		      return new Summary(list1,list2);
		      
		      
		      
		      
		     
		      
		      
		}
		catch(SQLException exc1){
	        exc1.printStackTrace();
	        return null;
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
	
	
	
}
