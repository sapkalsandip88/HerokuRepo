package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.web.servlet.error.ErrorMvcAutoConfiguration;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;
@ComponentScan
@SpringBootApplication
@EnableAutoConfiguration(exclude=ErrorMvcAutoConfiguration.class)
public class SubmissionFormApplication extends SpringBootServletInitializer{

	public SubmissionFormApplication() {
	    super();
	    setRegisterErrorPageFilter(false); // <- this one
	}
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application)
	{
		return application.sources(SubmissionFormApplication.class);
	}
	public static void main(String[] args) {
		
		SpringApplication.run(SubmissionFormApplication.class, args);
	}
	

}
