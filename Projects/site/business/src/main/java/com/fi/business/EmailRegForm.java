package com.fi.business;

import com.fi.api.ResponseMsg;

public interface EmailRegForm {

	
	ResponseMsg submit(String email, String ipAddress);
	
}
