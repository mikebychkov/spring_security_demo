package com.demo.control;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LeadersController {

    private static final Logger logger = LogManager.getLogger(LeadersController.class);

    @GetMapping("/leaders")
    public String showLeadersPage() {
        return "leaders";
    }

    @GetMapping("/leaders/info")
    public String showLeadersInfoPage() {
        return "leaders-info";
    }
}
