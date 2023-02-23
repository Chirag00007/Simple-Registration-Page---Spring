package com.duoo;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.context.support.XmlWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

public class WebInit //implements WebApplicationInitializer 
{

	
	public void onStartup(ServletContext servletContext) throws ServletException {
		System.out.print("thik chala yaha tak");
//		XmlWebApplicationContext webApplicationContext = new XmlWebApplicationContext();
//		webApplicationContext.setConfigLocation("classpath:application-config.xml");
		
		AnnotationConfigWebApplicationContext webApplicationContext = new AnnotationConfigWebApplicationContext();
		webApplicationContext.register(AppConfig.class);
		DispatcherServlet dispatcherServlet = new DispatcherServlet(webApplicationContext);
		ServletRegistration.Dynamic myCustomDisPatchServ = servletContext.addServlet("myDisPatchServ",
				dispatcherServlet);

		myCustomDisPatchServ.setLoadOnStartup(1);
		myCustomDisPatchServ.addMapping("/mywebsite.com/*");
	}

}
