package com.fi.config;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.web.servlet.HandlerMapping;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.handler.SimpleUrlHandlerMapping;
import org.springframework.web.servlet.mvc.ParameterizableViewController;
import org.springframework.web.servlet.mvc.SimpleControllerHandlerAdapter;
import org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter;
import org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.introspect.JacksonAnnotationIntrospector;
import com.fi.business.ContactForm;
import com.fi.business.ContactFormImpl;
import com.fi.business.EmailRegForm;
import com.fi.business.EmailRegFormImpl;
import com.fi.business.EnquiryForm;
import com.fi.business.EnquiryFormImp;
import com.fi.dao.JdbcWriteDao;
import com.fi.dao.WriteDao;

@Configuration
@EnableWebMvc
@ComponentScan("com.fi")
public class AppSiteConfig extends WebMvcConfigurerAdapter{

	@Autowired
	DataSourceConfig dataSourceConfig;
	
	
	
	@Bean
    public InternalResourceViewResolver viewResolver() {
        InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
        viewResolver.setViewClass(JstlView.class);
        viewResolver.setPrefix("/WEB-INF/");
        viewResolver.setSuffix(".jsp");
        return viewResolver;
    }
	
	@Bean
	public HandlerMapping landingPageHandlerMapping(){
		SimpleUrlHandlerMapping mapping = new SimpleUrlHandlerMapping();
		mapping.setOrder(0);
		ParameterizableViewController pvcLogin = new ParameterizableViewController();
		pvcLogin.setViewName("main");
		Map<String, ParameterizableViewController> sMap = Collections.singletonMap("/main", pvcLogin);
		/*Properties mappings = new Properties();
        mappings.put("/main.html", pvcLogin);*/
		mapping.setUrlMap(sMap);
		return mapping;
	}
	

	@Bean
	public RequestMappingHandlerMapping requestMappingHandlerMapping(){
		RequestMappingHandlerMapping handlerMapping = new RequestMappingHandlerMapping();
		handlerMapping.setOrder(1);
/*		handlerMapping.setInterceptors(Arrays.asList(new SecurityInterceptor()).toArray());
*/		//handlerMapping.setContentNegotiationManager(cnManager().getObject());
		return handlerMapping;
	}
	
	@Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/css/**").addResourceLocations("/WEB-INF/css/**")/*.setCachePeriod(31556926)*/;
        registry.addResourceHandler("/img/**").addResourceLocations("/WEB-INF/img/**")/*.setCachePeriod(31556926)*/;
        registry.addResourceHandler("/js/**").addResourceLocations("/WEB-INF/js/**")/*.setCachePeriod(31556926)*/;
        registry.addResourceHandler("/html/**").addResourceLocations("/WEB-INF/html/**")/*.setCachePeriod(31556926)*/;
        registry.addResourceHandler("/WEB-INF/html/**").addResourceLocations("/WEB-INF/html/**")/*.setCachePeriod(31556926)*/;
    }
	
	@Bean
	public SimpleControllerHandlerAdapter viewControllerHandlerAdapter(){
		return new SimpleControllerHandlerAdapter();
	}
	
	@Bean
	public ObjectMapper jacksonObjectMapper(){
		ObjectMapper om = new ObjectMapper();
		om.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
		AnnotationIntrospector primary = new JacksonAnnotationIntrospector();
		om.setAnnotationIntrospector(primary);
		om.setDateFormat(new SimpleDateFormat("yyyy-MM-dd"));
		om.setSerializationInclusion(Include.NON_NULL);
		return om;
	}
    
	@Bean
	public RequestMappingHandlerAdapter adapter(){
		RequestMappingHandlerAdapter adapter = new RequestMappingHandlerAdapter();
		//adapter.setContentNegotiationManager(cnManager().getObject());
		adapter.setOrder(1);
		List<HttpMessageConverter<?>> converters = new ArrayList<>();
		converters.add(jacksonConverter());
		adapter.setMessageConverters(converters);
		return adapter;
		
	}
	
	@Bean
	public MappingJackson2HttpMessageConverter jacksonConverter(){
		MappingJackson2HttpMessageConverter jaxConverter = new AppJacksonHttpMessageConverter();
		jaxConverter.setObjectMapper(jacksonObjectMapper());
		return jaxConverter;
	} 
	
	@Bean
	public WriteDao writeDao(){
		return new JdbcWriteDao(dataSourceConfig.dataSource());
	}

	@Bean
	public ContactForm contactForm(){
		return new ContactFormImpl(writeDao());
	}
	
	@Bean
	public EmailRegForm emailRegForm(){
		return new EmailRegFormImpl(writeDao());
	}
	
	@Bean
	public EnquiryForm enquiryForm(){
		return new EnquiryFormImp();
	}
}
