package p1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class AdminOfficer 
{
	String name,eid,mail,male,password,utype,dept,exp1;

	public String getName() {
		return name;
	}

	public String getEid() {
		return eid;
	}

	public String getMail() {
		return mail;
	}

	public String getPassword() {
		return password;
	}

	public String getUtype() {
		return utype;
	}

	public String getDept() {
		return dept;
	}

	public String getExp1() {
		return exp1;
	}
	public void setEid(String eid) {
		this.eid = eid;
	}
	public void setName(String name) {
		this.name = name;
	}

	
	public void setMale(String male) {
		this.male = male;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setUtype(String utype) {
		this.utype = utype;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}

	public void setExp1(String exp1) {
		System.out.println(exp1);
		this.exp1 = exp1;
	}
	public int register()
	{
		int i=0;
		try
		{
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/billsystem","root","rat");
			String query="insert into officerdemo values(?,?,?,?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, eid);
			ps.setString(2, name);
			ps.setString(3,mail);
			ps.setString(4,password);
			ps.setString(5,male);
			ps.setString(6,utype);
			ps.setString(7,dept);
			ps.setString(8,exp1);
			
			 i=ps.executeUpdate();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return i;
	}
	
}
