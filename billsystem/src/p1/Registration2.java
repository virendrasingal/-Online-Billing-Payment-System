package p1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Registration2
{
	private String pass,cno,cvv,dob;

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getCno() {
		return cno;
	}

	public void setCno(String cno) {
		this.cno = cno;
	}
	
	public String getCvv() {
		return cvv;
	}

	public void setCvv(String cvv) {
		this.cvv = cvv;
	}
	
	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}



	
	
	
	
	
	
	
		public int citizenlogin()
	{
		int i=0;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/billsystem","root","rat");
			String query="select * from cdetail where password=? and cvv=? and cno=? and dob=?";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, pass);
			ps.setString(2, cvv);
			ps.setString(3, cno);
			ps.setString(4, dob);
			
			
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
}