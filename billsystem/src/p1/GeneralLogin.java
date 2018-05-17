package p1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class GeneralLogin
{
	private String user,password;

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	public int citizenlogin()
	{
		int i=0;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/billsystem","root","rat");
			String query="select * from logindetail where uid=? and password=?";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, user);
			ps.setString(2, password);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				i=1;
			}
			
		}
		catch(Exception e)
		{
			
			e.printStackTrace();
		}
		return i;
	}
	public int adminlogin()
	{
		int i=0;
		String utype="";
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smpk","root","rat");
			String query="select * from officerdemo where eid=? and password=? and utype='Admin'";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, user);
			ps.setString(2, password);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				 utype=rs.getString(5);
				i=1;
			}
		}
		catch(Exception e)
		{
			
			e.printStackTrace();
		}
		return i;
	}
	public int officerlogin()
	{
		int i=0;
		String utype="";
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smpk","root","rat");
			String query="select * from officerdemo where eid=? and password=? and utype='Officer'";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, user);
			ps.setString(2, password);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				 utype=rs.getString(5);
				i=1;
			}
		}
		catch(Exception e)
		{
			
			e.printStackTrace();
		}
		return i;
	}
}
