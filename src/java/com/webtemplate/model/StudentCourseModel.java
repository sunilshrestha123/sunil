/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.webtemplate.model;

/**
 *
 * @author Admin
 */
public class StudentCourseModel {
 private int sid;
 private int cid;
    private int scid;
    private String fname;
    private String mname;
    private String lname;
      private String address;
    private String city;
     private String email;
    private String phone;
    private  String title;
    private String date;
    private String time;

    public StudentCourseModel() {
    }

    public StudentCourseModel(int scid, String fname, String mname, String lname, String address, String city, String email, String phone, String title, String date, String time) {
        this.scid = scid;
        this.fname = fname;
        this.mname = mname;
        this.lname = lname;
        this.address = address;
        this.city = city;
        this.email = email;
        this.phone = phone;
        this.title = title;
        this.date = date;
        this.time = time;
    }

    public int getScid() {
        return scid;
    }

    public void setScid(int scid) {
        this.scid = scid;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public StudentCourseModel(int sid, int cid, int scid) {
        this.sid = sid;
        this.cid = cid;
        this.scid = scid;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }
    

}