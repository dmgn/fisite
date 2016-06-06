package com.fi.business;

import com.fi.api.ResponseMsg;
import com.fi.dao.WriteDao;

public class EmailRegFormImpl implements EmailRegForm {

	public WriteDao writeDao;
	
	public EmailRegFormImpl(){
		
	}
	
	public EmailRegFormImpl(WriteDao writeDao){
		this.writeDao = writeDao;
	}

	@Override
	public ResponseMsg submit(String email, String ipAddress) {
		int result = writeDao.registerForNewsLetter(email, ipAddress);
		ResponseMsg respMsg = new ResponseMsg();
		if(result > 0){
			respMsg.setMsg("Subscribed Successfully.");
		}else{
			
		}
		return respMsg;
	}

}
