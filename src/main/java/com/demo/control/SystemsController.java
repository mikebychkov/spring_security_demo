package com.demo.control;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SystemsController {

    private static final Logger logger = LogManager.getLogger(SystemsController.class);

    @GetMapping("/systems")
    public String showSystemsPage() {
        return "systems";
    }
}
