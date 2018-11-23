package shivi.Utility;

public class ExtraSupport {
	public static String  generateVoterId(String vName,String aadhar) {
		
		
		return "eci"+vName.substring(0, 2)+aadhar.substring(4, 10);
		
	}

}
