package com.fi.business;

import com.fi.api.ContactFormMsg;
import com.fi.api.ResponseMsg;
import com.fi.dao.WriteDao;

public class ContactFormImpl implements ContactForm {

	WriteDao writeDao;
	
	public ContactFormImpl(){
		
	}
	
	public ContactFormImpl( WriteDao writeDao ){
		this.writeDao = writeDao;
	}


	@Override
	public ResponseMsg submitContactForm(ContactFormMsg msg, String ipAddress) {
		int result = writeDao.registerContactForm(msg, ipAddress);
		ResponseMsg respMsg = new ResponseMsg();
		if(result > 0){
			respMsg.setMsg("Submit Successful.");
		}else{
			
		}
		return respMsg;
	}

}
