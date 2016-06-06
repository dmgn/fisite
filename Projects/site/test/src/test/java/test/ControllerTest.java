package test;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.RequestBuilder;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fi.api.ContactFormMsg;
import com.fi.api.EmailRequestMsg;

import org.springframework.web.context.WebApplicationContext;

import static org.springframework.test.web.servlet.setup.MockMvcBuilders.webAppContextSetup;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:Beans.xml")
@WebAppConfiguration
public class ControllerTest {

	@Autowired
	private WebApplicationContext wac;
	private ObjectMapper objMapper;
	private MockMvc mockMvc;
	
	@Before
	public void setup(){
		this.mockMvc = webAppContextSetup(this.wac).build();
		objMapper = wac.getBean(ObjectMapper.class);
	}

	@Test
	public void testViewInvoices() throws Exception{
		RequestBuilder req = get("/main");
				
		MvcResult res = mockMvc.perform(req).andDo(print()).andReturn();	
	}
	
	
	@Test
	public void testEmailSubscription() throws Exception{
		
		String email = "gautam.naik@omgeo.com";
		EmailRequestMsg reqMsg = new EmailRequestMsg();
		reqMsg.setEmail(email);
		RequestBuilder req = post("/subscribe")
				.contentType(MediaType.APPLICATION_JSON)
				.content(objMapper.writeValueAsString(reqMsg));
		System.out.println(" Request" +objMapper.writeValueAsString(reqMsg));
		MvcResult res = mockMvc.perform(req).andDo(print()).andReturn();
	}
	
	
	@Test
	public void testContactForm() throws Exception{
		
		ContactFormMsg msg = new ContactFormMsg();
		msg.setEmail("gautam.naik@omgeo.com");
		msg.setName("Gautam Naik");
		msg.setTextMsg("Hello World");
		RequestBuilder req = post("/contactForm")
				.contentType(MediaType.APPLICATION_JSON)
				.content(objMapper.writeValueAsString(msg));
		MvcResult res = mockMvc.perform(req).andDo(print()).andReturn();
	}
}
