package com.leave.controller;

import com.leave.model.LeaveApply;
import com.leave.service.LeaveApplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Rakib on 7/22/2017.
 */
@Controller
public class homeController {

    @Autowired
    private LeaveApplyService leaveApplyService;
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String createApplication() {
            System.out.println("How are you ?");
        return "createapplication";

    }
    @RequestMapping(value = "/createapplication", method = RequestMethod.GET)
    public String makeAplicatin(@RequestBody LeaveApply leaveApply) {
        System.out.println("How are you ?");
        System.out.println(leaveApply.getId());
        return "createapplication";

    }
}
