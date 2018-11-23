package shivi.DataAccessObject;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import shivi.DataTransferObjects.RegistrationDTO;
import shivi.Utility.JDBCUtility;

public class InsertDataInDataBase {
	public static String insertRegistrationData(RegistrationDTO rDto) {
		int flag=0;
		int i=0 ;
		Connection con=null;
		PreparedStatement ps=null;
		try {
			con = JDBCUtility.getConnection();
			 ps  = con.prepareStatement("select aadhar from electionsystemdb");
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				
				if(rs.getString(1).equalsIgnoreCase(rDto.getAadhar()))
				{
					
					flag=1;
					return "already";
				}
			}
			if(flag==0)
			{
				ps= con.prepareStatement("insert into electionsystemdb values(?,?,?,?,?,?,?,?,?,?)");
				ps.setString(1, rDto.getVoterID());
				ps.setString(2, rDto.getVoterName());
				ps.setString(3, rDto.getFather());
				ps.setString(4, rDto.getMother());
				ps.setString(5, rDto.getAadhar());
				ps.setString(6, rDto.getPhone());
				ps.setString(7, rDto.getDob());
				ps.setString(8, rDto.getAddress());
				ps.setInt(9, 0);
				ps.setString(10,null);
				i= ps.executeUpdate();
				con.close();
				if(i>0)
				{
					return "done";
				}
					
			}
			
		}	
		catch (Exception e) 
		{
				e.printStackTrace();
		}
			
		
		return "error";
		
	}
	

}
