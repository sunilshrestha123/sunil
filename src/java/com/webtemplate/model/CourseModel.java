/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.webtemplate.model;

/**
 *
 * @author sunil shrestha
 */
public class CourseModel {
   private int cid;
 private String title;
private String type;
private String courseid;
private String price;
private String duration;

    public CourseModel() {
    }

    public CourseModel(int cid, String title, String type, String courseid, String price, String duration) {
        this.cid = cid;
        this.title = title;
        this.type = type;
        this.courseid = courseid;
        this.price = price;
        this.duration = duration;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getCourseid() {
        return courseid;
    }

    public void setCourseid(String courseid) {
        this.courseid = courseid;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }
    
}