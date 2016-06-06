package com.fi.rest;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fi.api.ContactFormMsg;
import com.fi.api.EmailRequestMsg;
import com.fi.api.EnquiryFormMsg;
import com.fi.api.ResponseMsg;
import com.fi.business.ContactForm;
import com.fi.business.EmailRegForm;
import com.fi.business.EnquiryForm;

@Controller
public class WebController {

	
	@Autowired
	ContactForm contactForm;
	
	@Autowired
	EmailRegForm emailRegForm;	
	
	@Autowired
	EnquiryForm enquiryForm;
	
	@RequestMapping(value = "/contactForm", method = RequestMethod.POST)
	public ResponseEntity<ResponseMsg> contactForm(HttpServletRequest httpRequest, @RequestBody ContactFormMsg form){
		return new ResponseEntity<ResponseMsg>(contactForm.submitContactForm(form, httpRequest.getRemoteAddr()), HttpStatus.OK );
	}
	
	@RequestMapping(value = "/subscribe", method = RequestMethod.POST)
	public ResponseEntity<ResponseMsg> newsLetter(HttpServletRequest httpRequest, @RequestBody EmailRequestMsg emailReq){
		return new ResponseEntity<ResponseMsg>(emailRegForm.submit(emailReq.getEmail(), httpRequest.getRemoteAddr()), HttpStatus.OK );
	}
	
	@RequestMapping(value = "/enquiryForm", method = RequestMethod.POST)
	public ResponseEntity<ResponseMsg> enquiryForm(@RequestBody EnquiryFormMsg msg){
		return new ResponseEntity<ResponseMsg>(null);
	}
}
