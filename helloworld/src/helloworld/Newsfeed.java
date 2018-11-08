package helloworld;

public class Newsfeed {

	private String user;
	private String postdate;
	private String post;
	
	public Newsfeed()
	{
		
	}
	
	public Newsfeed(String user,String date,String post)
	{
		this.user = user;
		this.postdate = date;
		this.post = post;
		
	}
	
	public String getUser()
	{
		return this.user;
	}
	
	public void setUser(String user)
	{
		this.user = user;
	}
	
	public String getDate()
	{
		return this.postdate;
	}
	
	public void setDate(String date)
	{
		this.postdate = date;
	}
	
	public String getPost()
	{
		return this.post;
	}
	
	public void setPost(String post)
	{
		this.post = post;
	}
	
	public String toString()
	{
		return " "+this.user+" "+this.postdate+" "+this.post;
	}
	
}
