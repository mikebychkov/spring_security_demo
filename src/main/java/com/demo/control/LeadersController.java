package com.demo.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LeadersController {

    @GetMapping("/leaders")
    public String showLeadersPage() {
        return "leaders";
    }

    @GetMapping("/leaders/info")
    public String showLeadersInfoPage() {
        return "leaders-info";
    }
}
