package shivi.DataAccessObject;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.util.List;

import shivi.DataTransferObjects.LoginDto;
import shivi.Utility.JDBCUtility;
import shivi.javaBeans.LoginBean;
import shivi.javaBeans.resultBean;

public class DbOperations {
	
	Connection con=null;
	PreparedStatement ps=null;
	
	public LoginDto voterLogin(LoginBean lBean) {

		
		LoginDto dto=new LoginDto();
		
		try {
			 con=JDBCUtility.getConnection();
			 ps = con.prepareStatement("select * from electionsystemdb where dob=? and aadhar=?");
			ps.setString(1,lBean.getDob());
			ps.setString(2, lBean.getAadhar());
			 
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				
				dto.setVoterId(rs.getString(1));
				dto.setVoterName(rs.getString(2));
				dto.setFather(rs.getString(3));
				dto.setMother(rs.getString(4));
				dto.setAadhar(rs.getString(5));
				dto.setPhone(rs.getString(6));
				dto.setDob(rs.getString(7));
				dto.setAddress(rs.getString(8));
				return dto;
			
			}
			else {
				return null;

			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return null;
		
	}

	
	public String saveVote(String aadhar, String vote) {
		
		try {
			con=JDBCUtility.getConnection();
			ps=con.prepareStatement("update electionsystemdb set vote=? ,votestatus=? where aadhar=? ");
			ps.setString(1, vote);
			ps.setInt(2, 1);
			ps.setString(3, aadhar);
			 int i = ps.executeUpdate();
			 con.close();
			 
			 if(i>0)
			 {
				 
				 return "success";
			 }
			 else {
				 
				return "error";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "error";
		
	}
	
	
	public resultBean declearResult() {
	        
	        int BJP=0,INC=0,BSP=0,RLD=0,SP=0,max;
	        String winner=null;
	        resultBean rbean=new resultBean();
		
		try {
			con=JDBCUtility.getConnection();
			ps=con.prepareStatement("select vote from electionsystemdb");
			
			ResultSet rs = ps.executeQuery();
			
			
			while(rs.next())
			{
				if(rs.getString(1)!=null)
				{
					switch(rs.getString(1))
					{
					case "BJP":
						BJP++;
						break;
						
					case "INC":
						INC++;
						break;
					case "SP":
						SP++;
						break;
					case "BSP":
						BSP++;
						break;
					case "RLD":
						RLD++;
						break;
					}
				
				}
				
			}
			rbean.setBJP(BJP);
			rbean.setINC(INC);
			rbean.setSP(SP);
			rbean.setBSP(BSP);
			rbean.setRLD(RLD);
			max=BJP;
			String s[]={"BJP","INC","SP","BSP","RLD"};
			int a[]={BJP,INC,SP,BSP,RLD};
			/*a[0]=BJP;
			a[1]=INC;
			a[2]=SP;
			a[3]=BSP;
			a[4]=RLD;*/
			for(int i=1;i<a.length;i++)
			{
				if(max<a[i])
				{
					max=a[i];
					winner=s[i];
				}
				if(max==a[i])
				{
					max=a[i];
					winner="Election Tie";
				}
			}
			rbean.setWinner(winner);
			rbean.setWinnerVote(max);
			
			return rbean; 
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
		
	}
}
