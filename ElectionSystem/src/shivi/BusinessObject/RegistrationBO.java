package shivi.BusinessObject;


import shivi.DataAccessObject.InsertDataInDataBase;
import shivi.DataTransferObjects.RegistrationDTO;
import shivi.Utility.ExtraSupport;
import shivi.javaBeans.RegistrationBean;

public class RegistrationBO {
	public String getRegistrationData(RegistrationBean rBean) {
		
		RegistrationDTO rDto = new RegistrationDTO();
		rDto.setVoterID(ExtraSupport.generateVoterId(rBean.getVoterName(), rBean.getAadhar()));
		rDto.setVoterName(rBean.getVoterName());
		rDto.setAadhar(rBean.getAadhar());
		rDto.setAddress(rBean.getAddress());
		rDto.setDob(rBean.getDob());
		rDto.setFather(rBean.getFather());
		rDto.setMother(rBean.getMother());
		rDto.setPhone(rBean.getPhone());
		
		
		
		return InsertDataInDataBase.insertRegistrationData(rDto);
		
	}

}
