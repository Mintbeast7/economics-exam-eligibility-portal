package com.economics.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.economics.service.EconomicsStudentService;

@Controller
@RequestMapping("user/student")
public class EconomicsStudentController {

    private EconomicsStudentService studentService;

    public EconomicsStudentController(EconomicsStudentService injectedStudentService) {
        this.studentService = injectedStudentService;
    }
    
    @RequestMapping("/")
    public String home() {
        return "index";
    }
    
    @RequestMapping("/{rollNo}")
    public String checkExamEligibility(@PathVariable("rollNo") String rollNo, Model model) {

        String eligibilityStatus = studentService.checkEligibility(rollNo);

        model.addAttribute("rollNo", rollNo);
        model.addAttribute("eligibilityStatus", eligibilityStatus);

        return "economicsStudentStatus";
    }
}
