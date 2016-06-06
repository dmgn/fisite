package com.fi.dao;

import com.fi.api.ContactFormMsg;

public interface WriteDao {

	int registerForNewsLetter(String email, String ipAddress);
	
	int registerContactForm (ContactFormMsg msg, String ipAddress);
	
	int registerEnquiryForm();
}
