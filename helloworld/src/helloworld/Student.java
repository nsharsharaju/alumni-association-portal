package helloworld;
import java.sql.*;
public class Student extends User {
	
	private String emailid;	
	
	public Student(){
		
	}
	
	public Student(String name,String rollno,String password,String emailid){
		super(rollno,password,name);
		this.emailid = emailid;
	}
	
	public String getEmailid()
	{
		return this.emailid;
	}
	
	public void setEmailid(String emailid)
	{
		this.emailid= emailid;
	}
	
	public void signup(Student s){
	try{
		Connection conn = Jdbcconnection.conn;
		 
		 Statement stmt = conn.createStatement();
	     stmt.executeUpdate("CREATE TABLE IF NOT EXISTS student(name varchar(30),rollno varchar(20),password varchar(30),emailid varchar(30))");
	     stmt.close();
	      
		 PreparedStatement pstmt = conn.prepareStatement("insert into student values (?,?,?,?)");
         pstmt.setString(1,s.getName());
         pstmt.setString(2,s.getRollno());
         pstmt.setString(3,s.getpassword());
         pstmt.setString(4,s.getEmailid());
         pstmt.executeUpdate();
       
         
	}
	catch(SQLException exc1){
        exc1.printStackTrace();
        
    }
}
}

