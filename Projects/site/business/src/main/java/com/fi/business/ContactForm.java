package com.fi.business;

import com.fi.api.ContactFormMsg;
import com.fi.api.ResponseMsg;

public interface ContactForm {

	
	ResponseMsg submitContactForm( ContactFormMsg msg, String ipAddress );
	
}
