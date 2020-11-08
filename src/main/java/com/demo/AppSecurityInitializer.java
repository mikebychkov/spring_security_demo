package com.demo;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.security.web.context.AbstractSecurityWebApplicationInitializer;

public class AppSecurityInitializer extends AbstractSecurityWebApplicationInitializer {

    private static final Logger logger = LogManager.getLogger(AppSecurityInitializer.class);

}
