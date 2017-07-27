package com.leave.model;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * Created by Rakib on 7/22/2017.
 */
@Entity
public class LeaveApply {
    @Id
    private Integer id;
    private Integer noOfDays;
    private String leaveCatagory;
    private String leaveReason;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getLeaveCatagory() {
        return leaveCatagory;
    }

    public void setLeaveCatagory(String leaveCatagory) {
        this.leaveCatagory = leaveCatagory;
    }

    public String getLeaveReason() {
        return leaveReason;
    }

    public void setLeaveReason(String leaveReason) {
        this.leaveReason = leaveReason;
    }

    public Integer getNoOfDays() {
        return noOfDays;
    }

    public void setNoOfDays(Integer noOfDays) {
        this.noOfDays = noOfDays;
    }
}
