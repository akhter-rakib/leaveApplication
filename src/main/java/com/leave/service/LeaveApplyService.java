package com.leave.service;

import com.leave.repository.LeaveApplyRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Rakib on 7/22/2017.
 */
@Service
public class LeaveApplyService {
    @Autowired
    private LeaveApplyRepository leaveApplyRepository;
}
